import 'package:ecommerce_app/application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'package:ecommerce_app/application/users/user_image/user_image_bloc.dart';
import 'package:ecommerce_app/application/users/users_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<UsersBloc>(
          create: (context) =>
              getIt<UsersBloc>()..add(const UsersEvent.watchCurrentUser()),
        ),
        BlocProvider<UserImageBloc>(
            create: (context) => getIt<UserImageBloc>()..add(const UserImageEvent.getUserImage())),
      ],
      child: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return Scaffold(
            appBar: buildAppBar(context),
            body: SafeArea(
              maintainBottomViewPadding: true,
              child: SingleChildScrollView(
                child: state.user != null
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ScreenTitle(title: 'My Profile'),
                            SizedBox(
                              height: Responsive.height(2, context),
                            ),
                            BlocBuilder<UserImageBloc, UserImageState>(
                                builder: (context, state) =>
                                    buildProfileImageOptions(context, state)),
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
                                Navigator.of(context).pushNamed('/edit_profile',
                                    arguments: state.user);
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
                                gradientColors: [
                                  Colors.red[400],
                                  Colors.red[700]
                                ],
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
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildProfileImageOptions(BuildContext context, UserImageState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularIconButtonWithBorder(
            borderWidth: 2,
            size: Responsive.height(5, context),
            icon: const Icon(
              Icons.camera_alt,
            ),
            onPressedCallback: () async {
              context.read<UserImageBloc>().add(
                  const UserImageEvent.updateUserImage(removeInstead: false));
            },
            iconColor: iconColorLight,
            buttonColor: Colors.white,
            borderColor: iconColorLight,
          ),
          state.map(
              initial: (_) => const CircularGradientAvatar(
                image: null,
                defaultImagePath: 'lib/assets/images/default-user.png',
              ),
              loadingImage: (_) => const CircularGradientAvatarLoading(),
              imageLoadSuccess: (imageURL) => CircularGradientAvatar(
                    image: imageURL.imageURL.isNotEmpty
                        ? NetworkImage(imageURL.imageURL)
                        : null,
                    defaultImagePath: 'lib/assets/images/default-user.png',
                  ),
              imageLoadFailure: (_) => const CircularGradientAvatar(
                    image: null,
                    defaultImagePath: 'lib/assets/images/default-user.png',
                  )),
          CircularIconButtonWithBorder(
            borderWidth: 2,
            size: Responsive.height(5, context),
            icon: const Icon(
              Icons.cancel,
            ),
            onPressedCallback: () {
              context.read<UserImageBloc>().add(
              const UserImageEvent.updateUserImage(removeInstead: true));
            },
            iconColor: iconColorLight,
            buttonColor: Colors.white,
            borderColor: iconColorLight,
          ),
        ],
      ),
    );
  }
}
