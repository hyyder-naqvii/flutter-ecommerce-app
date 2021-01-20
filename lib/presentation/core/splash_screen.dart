import 'package:ecommerce_app/application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){

    context.read<AuthBloc>().add(const AuthEvent.requestAuthState());
    print("Init Called!");

    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return  BlocListener<AuthBloc,AuthState>(
      listener: (context,state){

        if(state.isAuthenticated){

          if(state.isAdmin){

            Navigator.of(context).popAndPushNamed('/dashboard');
          }
          else{

              Navigator.of(context).popAndPushNamed('/menu');
          }
        }
        else{
          Navigator.of(context).popAndPushNamed('/');
        }

      },
      child: Container(
        color: Colors.white,
        child:  Center(
          child: CircularProgressIndicator(
            backgroundColor: mainColor,
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}
