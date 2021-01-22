import 'package:ecommerce_app/application/auth/auth_bloc/authentication_bloc.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_event.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_state.dart';
import 'package:ecommerce_app/application/users/users_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';


class EditProfile extends StatelessWidget{

  final OOGLOOUser initialUser;

  const EditProfile({Key key, this.initialUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) => getIt<UsersBloc>()..add(const UsersEvent.getCurrentUser()),
      child: Scaffold(
        appBar: buildAppBar(context),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
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
                              buildNameField(initialUser,context),
                              buildGenderField(initialUser, context),
                              buildPhoneNumberField(initialUser,context),
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
                                      Navigator.of(context).pop();
                                    }
                                ),
                              )
                            ],
                          ),


                    );
                  }),
                ],
              ),

          ),
        ),
      ),
    );
  }

  Widget buildGenderField(
      OOGLOOUser userDataProvider, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical : 10.0),
      child: DropdownButtonFormField(
        value: initialUser.gender??'Male',
        decoration: formStyleMain.copyWith(labelText: "Gender"),
        items: OOGLOOUser.genders
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

  Widget buildPhoneNumberField(OOGLOOUser userDataProvider, BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical : 10.0),
          child: TextFormField(
              decoration: formStyleMain.copyWith(labelText: "Phone No"),
              initialValue: userDataProvider.phoneNumber.value.getOrElse(null) ?? '',
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
                      "Phone Number Must 10-12 Digits long (Leave Empty if none)",
                      orElse: () => null),
                      (r) => null)),
        );
  }

  Widget buildNameField(OOGLOOUser userDataProvider,BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical : 10.0),
          child: TextFormField(
              decoration: formStyleMain.copyWith(labelText: "Username"),
              initialValue: userDataProvider.username.value.getOrElse(null) ?? '',
              keyboardType: TextInputType.number,
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
                      invalidUsername: (_) =>
                      "Username cannot be empty!",
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
