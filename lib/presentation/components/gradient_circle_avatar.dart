import 'package:ecommerce_app/config/configuration.dart';
import 'package:flutter/material.dart';
class CircularGradientAvatarNetwork extends StatelessWidget {
  final List<Color> borderGradientColors;
  final NetworkImage image;
  final String defaultImagePath;

  const CircularGradientAvatarNetwork({
    Key key, this.borderGradientColors, @required this.image, this.defaultImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: Responsive.height(11, context),
          child: Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  mainDarkColor,
                  mainColor,
                ],
              ),
              shape: BoxShape.circle,

            ),
          ),
        ),
        if (image == null) CircleAvatar(

          radius: Responsive.height(10, context),
          backgroundImage: AssetImage(defaultImagePath),
        ) ,
        if(image != null) CircleAvatar(
          radius:  Responsive.height(10, context),
          backgroundImage:image,
        ),

      ],
    );
  }
}
class CircularGradientAvatarLoading extends StatelessWidget {
  final List<Color> borderGradientColors;

  const CircularGradientAvatarLoading({
    Key key, this.borderGradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: Responsive.height(11, context),
          child: Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  mainDarkColor,
                  mainColor,
                ],
              ),
              shape: BoxShape.circle,

            ),
          ),
        ),
        const Center(
          child: CircularProgressIndicator(),
        ),

      ],
    );
  }
}
class CircularGradientAvatarMemory extends StatelessWidget {
  final List<Color> borderGradientColors;
  final MemoryImage image;
  final String defaultImagePath;

  const CircularGradientAvatarMemory({
    Key key, this.borderGradientColors, @required this.image, this.defaultImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: Responsive.height(11, context),
          child: Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  mainDarkColor,
                  mainColor,
                ],
              ),
              shape: BoxShape.circle,

            ),
          ),
        ),
        if (image == null) CircleAvatar(
          radius: Responsive.height(10, context),
          backgroundImage: AssetImage(defaultImagePath),
        ) ,
        if(image != null) CircleAvatar(
          radius:  Responsive.height(10, context),
          backgroundImage:image,
        ),

      ],
    );
  }
}