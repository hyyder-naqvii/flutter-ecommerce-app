import 'package:ecommerce_app/config/configuration.dart';
import 'package:flutter/material.dart';
class CircularGradientAvatar extends StatelessWidget {
  final List<Color> borderGradientColors;
  final MemoryImage image;
  final String defaultImagePath;

  const CircularGradientAvatar({
    Key key, this.borderGradientColors, @required this.image, this.defaultImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: Responsive.width(30, context),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  mainDarkColor,
                  mainColor,
                ],
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: Responsive.width(21, context),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,

            ),
          ),
        ),
        if (image == null) CircleAvatar(

          radius: Responsive.width(19, context),
          backgroundImage: AssetImage(defaultImagePath),
        ) ,
        if(image != null) CircleAvatar(
          radius: Responsive.width(19, context),
          backgroundImage:image,
        ),

      ],
    );
  }
}