import 'package:ecommerce_app/config/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gradient_icon.dart';
class CardWithGradientIcon extends StatelessWidget {
  final Color backGroundColor;
  final double borderRadius;
  final VoidCallback onPressedCallback;
  final List<Color> gradientColors;
  final String cardLabel;
  final IconData icon;
  final Color textColor;

  const CardWithGradientIcon({
    Key key,
    @required this.backGroundColor,
    @required this.borderRadius,
    @required this.onPressedCallback,
    @required this.gradientColors,
    @required this.cardLabel,
    @required this.textColor,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
        color: backGroundColor.withOpacity(0.1),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: onPressedCallback,
          highlightColor: Colors.transparent,
          splashColor: backGroundColor.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                GradientIcon(
                    icon: icon,
                    size: Responsive.width(7, context),
                    gradient: LinearGradient(colors:gradientColors)),
                SizedBox(
                  width: Responsive.width(3, context),
                ),
                Text(
                  cardLabel,
                  style: TextStyle(
                    fontSize: Responsive.width(4, context),
                    letterSpacing: 1.5,
                    //fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
