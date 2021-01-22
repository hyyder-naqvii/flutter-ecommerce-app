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


class UserProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) => getIt<UsersBloc>()..add(const UsersEvent.watchCurrentUser()),
      child: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return Scaffold(
            appBar: buildAppBar(context),
            body: SafeArea(
              maintainBottomViewPadding: true,
              child: SingleChildScrollView(
                child: state.user != null? Padding(
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
                          state.user.username.value.getOrElse(null),
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
                          Navigator.of(context).pushNamed('/edit_profile',arguments: state.user);
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
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signOut());
                            Navigator.of(context)
                                .popUntil(ModalRoute.withName('/'));
                          })
                    ],
                  ),
                ) : const Center(child: CircularProgressIndicator(),),
              ),
            ),
          );
        },
      ),
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
                    const UsersEvent.updateCurrentUserProfilePic(
                        removeInstead: false));
              },
              iconColor: iconColorLight,
              buttonColor: Colors.white,
              borderColor: iconColorLight,
            ),
            const CircularGradientAvatar(
              //TODO IMplement user profile image
              // image: state.user.profilePic != null
              //     ? MemoryImage(state.user.profilePic)
              //     : null,
              image: null,
              defaultImagePath: 'lib/assets/images/default-user.png',
            ),
            CircularIconButtonWithBorder(
              borderWidth: 2,
              size: Responsive.width(10, context),
              icon: const Icon(
                Icons.cancel,
              ),
              onPressedCallback: () {
                context.read<UsersBloc>().add(
                    const UsersEvent.updateCurrentUserProfilePic(
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
