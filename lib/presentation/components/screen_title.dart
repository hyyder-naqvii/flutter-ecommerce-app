import 'package:ecommerce_app/config/configuration.dart';
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String title;

  const ScreenTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: Responsive.width(7, context),
        letterSpacing: 1.5,
      ),
    );
  }
}