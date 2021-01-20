import 'package:ecommerce_app/application/auth/auth_bloc/authentication_bloc.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_event.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_state.dart';
import 'package:ecommerce_app/application/users/users_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  void initState() {
    final user = getIt<IAuthenticate>().getSignedInUser();
    context.read<UsersBloc>().add(UsersEvent.getCurrentUser(user));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userDataProvider = BlocProvider.of<UsersBloc>(context).state.user;

    return MultiBlocListener(
      listeners: [
        BlocListener<UsersBloc, UsersState>(
          listener: (context, state) {
            context.read<AuthenticationBloc>().add(
                 AuthenticationEvent
                    .usernameChanged(state.user.fullName));

          },
        ),
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if(state.updateSuccess){
              FlushbarHelper.createSuccess(message: 'Profile Information Updated Successfully!').show(context);
              context.read<AuthenticationBloc>().add(
                 const  AuthenticationEvent
                      .resetState());
              final user = getIt<IAuthenticate>().getSignedInUser();
              context.read<UsersBloc>().add(
                  UsersEvent.getCurrentUser(user));
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: buildAppBar(context),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child:
                BlocBuilder<UsersBloc, UsersState>(builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ScreenTitle(title: 'Edit Profile'),
                  SizedBox(
                    height: Responsive.height(3, context),
                  ),
                  buildFormSectionTitle(context, 'Personal Information'),
                  SizedBox(
                    height: Responsive.height(0.5, context),
                  ),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, state) {
                    return Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildNameField(userDataProvider),
                          buildGenderField(userDataProvider, context),
                          buildPhoneNumberField(userDataProvider),
                          SizedBox(
                            width: double.infinity,
                            child: GradientButton(
                                gradientColors: [mainDarkColor,mainColor],
                                label:  Text(
                                  'Update Profile',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Responsive.width(4, context),
                                  ),
                                ),
                                onPressedCallback: (){
                                  context.read<AuthenticationBloc>().add(
                                      const AuthenticationEvent
                                          .profileInformationUpdated());
                                }
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  Padding buildGenderField(
      OUser userDataProvider, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical : 10.0),
      child: DropdownButtonFormField(
        value: userDataProvider.gender??'',
        decoration: formStyleMain.copyWith(labelText: "Gender"),
        items: <String>['','Male', 'Female', 'Other']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String value) {
          context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.genderChanged(value));
        },
      ),
    );
  }

  Padding buildPhoneNumberField(OUser userDataProvider) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical : 10.0),
      child: TextFormField(
          decoration: formStyleMain.copyWith(labelText: "Phone No"),
          initialValue: userDataProvider.phoneNo ?? '',
          keyboardType: TextInputType.number,
          onChanged: (value) {
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationEvent.phoneNumberChanged(value));
          },
          validator: (_) => context
              .read<AuthenticationBloc>()
              .state
              .phoneNumber
              .value
              .fold(
                  (f) => f.maybeMap(
                      invalidPhoneNumber: (_) =>
                          "Phone Number Must 10-12 Digits long",
                      orElse: () => null),
                  (r) => null)),
    );
  }

  Padding buildNameField(OUser userDataProvider) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical : 10.0),
      child: TextFormField(
          decoration: formStyleMain.copyWith(labelText: "Full Name"),
          initialValue: userDataProvider.fullName ?? '',
          onChanged: (value) {
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationEvent.usernameChanged(value));
          },
          validator: (_) => context
              .read<AuthenticationBloc>()
              .state
              .username
              .value
              .fold(
                  (f) => f.maybeMap(
                      invalidUsername: (_) => "Invalid Full Name",
                      orElse: () => null),
                  (r) => null)),
    );
  }

  Text buildFormSectionTitle(BuildContext context, String title) {
    return Text(title,
        style: TextStyle(
          color: textColorLight,
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: Responsive.width(4, context),
        ));
  }
}
