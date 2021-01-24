
import 'package:flutter/material.dart';


class GradientButton extends StatefulWidget {
  const GradientButton(
      {@required this.gradientColors,
      @required this.label,
      @required this.onPressedCallback});

  final List<Color> gradientColors;

  final Widget label;

  final Function onPressedCallback;



  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: widget.gradientColors,
          ),
        ),
        child: InkWell(
          splashColor: widget.gradientColors[0],
          onTap: () {
            widget.onPressedCallback();
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: widget.label,
            ),
          ), // other widget
        ),
      ),
    );
  }
}
