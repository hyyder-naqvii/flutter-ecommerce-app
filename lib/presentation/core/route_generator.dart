import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/presentation/admin/add_products.dart';
import 'package:ecommerce_app/presentation/admin/dashboard/dashboard.dart';
import 'package:ecommerce_app/presentation/auth/register/register_page.dart';
import 'package:ecommerce_app/presentation/auth/sign_in/sign_in_page.dart';
import 'package:ecommerce_app/presentation/core/splash_screen.dart';
import 'package:ecommerce_app/presentation/user/cart/cart.dart';
import 'package:ecommerce_app/presentation/user/check_out/check_out.dart';
import 'package:ecommerce_app/presentation/user/confirmation/confirmation.dart';
import 'package:ecommerce_app/presentation/user/menu/menu.dart';
import 'package:ecommerce_app/presentation/user/product_details/product_details.dart';
import 'package:ecommerce_app/presentation/user/user_profile/edit_profile.dart';
import 'package:ecommerce_app/presentation/user/user_profile/profile.dart';
import 'package:flutter/material.dart';

import 'home.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/splash_screen':
        return  MaterialPageRoute(builder: (_) => SplashScreen());
      case '/menu':
        return  MaterialPageRoute(builder: (_) => Menu());
      case '/product_details':
        return  MaterialPageRoute(builder: (_) => ProductDetails(product: args as Option<FSProduct>));
      case '/cart':
        return  MaterialPageRoute(builder: (_) => CartScreen());
      case '/checkout':
        return  MaterialPageRoute(builder: (_) => CheckOutScreen());
      case '/confirmation':
        return  MaterialPageRoute(builder: (_) => Confirmation());
      case '/sign_in_page':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/register_page':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/add_products_page':
        return MaterialPageRoute(builder: (_) => AddProducts(product: args is FSProduct ? args : null));
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/user_profile':
        return MaterialPageRoute(builder: (_) => UserProfile());
      case '/edit_profile':
        return MaterialPageRoute(builder: (_) => EditProfile());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
