import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Image.asset('lib/assets/images/confirmation.png')),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Confirmation',
                    style: TextStyle(
                        color: textColor, fontSize: Responsive.width(8, context)),
                  ),
                  Text(
                    'Your order was successfully received!',
                      textAlign: TextAlign.center,
                    style: TextStyle(

                        color: textColorLight, fontSize: Responsive.width(4.5, context)),
                  ),
                ],
              ),
            ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.all(10),
          child: SizedBox(
            //width: Responsive.width(20, context),
            height: Responsive.height(8, context),
            child: GradientButton(
              gradientColors: [mainDarkColor, mainColor],
              label: Text(
                'Back to Home',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Responsive.width(4.5, context),
                    fontWeight: FontWeight.bold),
              ),
              onPressedCallback: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));


              },
            ),
          ),
        )

          ],
        ),
      ),
    );
  }
}
