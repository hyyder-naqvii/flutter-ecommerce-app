import 'package:flutter/material.dart';

class CircularIconButtonWithBorder extends StatelessWidget {
  final Color iconColor;
  final Color buttonColor;
  final Color borderColor;
  final double borderWidth;
  final double size;
  final Icon icon;
  final VoidCallback onPressedCallback;

  const CircularIconButtonWithBorder({
    Key key,
    @required this.borderWidth,
    @required this.size,
    @required this.icon,
    @required this.onPressedCallback,
    @required this.iconColor,
    @required this.buttonColor,
    @required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      decoration: BoxDecoration(
          color: buttonColor,
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: 2)),
      child: IconButton(
        icon: icon,
        color: iconColor,
        iconSize: (50 / 100) * size,
        onPressed: onPressedCallback,
      ),
    );
  }
}
