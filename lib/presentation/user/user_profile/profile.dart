import 'package:ecommerce_app/application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'package:ecommerce_app/application/users/users_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/presentation/components/card_with_gradient_icon.dart';
import 'package:ecommerce_app/presentation/components/circular_button_with_border.dart';
import 'package:ecommerce_app/presentation/components/gradient_circle_avatar.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
  print("Init Called On Update");
    final user = getIt<IAuthenticate>().getSignedInUser();

    context.read<UsersBloc>().add(UsersEvent.getCurrentUser(user));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsersBloc, UsersState>(
      listener: (context, state) {
        print('Listener Ran');
      },
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: SafeArea(
            maintainBottomViewPadding: true,
            child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ScreenTitle(title: 'My Profile'),
                    SizedBox(
                      height: Responsive.height(2, context),
                    ),
                    buildProfileImageOptions(context, state),
                    Center(
                      child: Text(
                        state.user.fullName,
                        style: TextStyle(
                          fontSize: Responsive.width(6, context),
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: textColorLight,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Responsive.height(2, context),
                    ),
                    CardWithGradientIcon(
                      backGroundColor: mainDarkColor,
                      borderRadius: 20,
                      onPressedCallback: () {
                        Navigator.of(context).pushNamed('/edit_profile');
                      },
                      gradientColors: [mainDarkColor, mainColor],
                      cardLabel: 'Edit Profile',
                      textColor: textColorLight,
                      icon: Icons.edit,
                    ),
                    CardWithGradientIcon(
                      backGroundColor: mainDarkColor,
                      borderRadius: 20,
                      onPressedCallback: () {
                        Navigator.of(context).pushNamed('/cart');
                      },
                      gradientColors: [mainDarkColor, mainColor],
                      cardLabel: 'My Cart',
                      textColor: textColorLight,
                      icon: Icons.add_shopping_cart,
                    ),
                    CardWithGradientIcon(
                      backGroundColor: mainDarkColor,
                      borderRadius: 20,
                      onPressedCallback: () {
                        print("Navigate to Customer Orders");
                      },
                      gradientColors: [mainDarkColor, mainColor],
                      cardLabel: 'My Orders',
                      textColor: textColorLight,
                      icon: Icons.assignment_rounded,
                    ),
                    // SizedBox(
                    //   height: Responsive.height(25, context),
                    // ),
                    GradientButton(
                        gradientColors: [Colors.red[400], Colors.red[700]],
                        label: Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Responsive.width(4, context),
                          ),
                        ),
                        onPressedCallback: () {
                          context.read<AuthBloc>().add(const AuthEvent.signOut());
                          Navigator.of(context).popUntil(
                              ModalRoute.withName('/'));
                        })
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  SizedBox buildProfileImageOptions(BuildContext context, UsersState state) {
    return SizedBox(
      height: Responsive.width(50, context),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularIconButtonWithBorder(
              borderWidth: 2,
              size: Responsive.width(10, context),
              icon: const Icon(
                Icons.camera_alt,
              ),
              onPressedCallback: () {
                context.read<UsersBloc>().add(
                    UsersEvent.updateCurrentUserProfilePic(state.user,
                        removeInstead: false));
              },
              iconColor: iconColorLight,
              buttonColor: Colors.white,
              borderColor: iconColorLight,
            ),
            CircularGradientAvatar(
                image: state.user.profilePic != null
                    ? MemoryImage(state.user.profilePic)
                    : null,
            defaultImagePath: 'lib/assets/images/default-user.png',),
            CircularIconButtonWithBorder(
              borderWidth: 2,
              size: Responsive.width(10, context),
              icon: const Icon(
                Icons.cancel,
              ),
              onPressedCallback: () {
                context.read<UsersBloc>().add(
                    UsersEvent.updateCurrentUserProfilePic(state.user,
                        removeInstead: true));
              },
              iconColor: iconColorLight,
              buttonColor: Colors.white,
              borderColor: iconColorLight,
            ),
          ],
        ),
      ),
    );
  }

}
