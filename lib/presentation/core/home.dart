import 'package:ecommerce_app/presentation/core/route_generator.dart';
import 'package:ecommerce_app/presentation/home/homepage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
