
import 'package:flutter/material.dart';

Color mainColor = const Color(0xff64B6FF);
Color mainDarkColor = const Color(0xff667EEA);
Color textColor = const Color(0xff434343);
Color textDarkColor = const Color(0xff2A2A2A);
Color textColorLight = const Color(0xff707070);
Color iconColorMain = const Color(0xff818181);
Color iconColorLight = const Color(0xff999999);


class Responsive{
  static double width(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.width*(p/100);
  }
  static double height(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.height*(p/100);
  }
}


InputDecoration formStyleMain = InputDecoration(
  errorStyle: const TextStyle(
    fontSize: 15,
  ),
  labelText: "Label",
  labelStyle:
      const TextStyle(color: Color(0xff707070), letterSpacing: 2, fontSize: 17),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xff707070),
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red[700],
    ),
  ),
  focusedErrorBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red[700],
    ),
  ),
  border:  OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red[700],
    ),
  ),
);
InputDecoration formStyleSearchBox =  InputDecoration(

  errorStyle:  const TextStyle(
    fontSize: 20,
  ),
  hintText: "Search",
  prefixIcon: Icon(
    Icons.search,
    color: iconColorMain,
    size: 25,
  ),
  hintStyle:
   const TextStyle(color: Color(0xff707070), letterSpacing: 2, fontSize: 20),
  focusedBorder:InputBorder.none,
  errorBorder:  InputBorder.none,
  focusedErrorBorder: InputBorder.none,
  border: InputBorder.none,
);
AppBar buildAppBar(BuildContext context) {
  return AppBar(

    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Padding(
      padding: const EdgeInsets.all(15.0),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
        color: iconColorMain,
        iconSize: Responsive.width(6, context),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
  );
}
