import 'package:ecommerce_app/application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {



  Widget showPageBasedOnState(AuthState state){
    if(state.isAuthenticated){
      if(state.isAdmin){
        return const AdminView();
      }
      else{
        return const AuthenticatedView();
      }

    }
    return const UnAuthenticatedView();
  }



  @override
  Widget build(BuildContext context) {


    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar:  PreferredSize(
                preferredSize: const Size.fromHeight(5.0),
                // here the desired height
                child: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                )
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(children: [
                    buildHeader(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Explore Us",
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 22)),
                  ]),
                ),
                buildCentreImage(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 50.0, right: 50, top: 5, bottom: 25),
                  child: showPageBasedOnState(state),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Expanded buildCentreImage() {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0),
        child: Image(
          image: AssetImage(
            'lib/assets/images/home_page_image.png',
          ),
        ),
      ),
    );
  }

  RichText buildHeader() {
    return RichText(
      text: TextSpan(

        style: TextStyle(color: textColorLight, fontSize: 25),
        children: const <TextSpan>[
          TextSpan(
            text: 'Welcome to ',
          ),
          TextSpan(
            text: 'Obay!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class AuthenticatedView extends StatelessWidget {
  const AuthenticatedView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GradientButton(
            gradientColors: [mainDarkColor, mainColor],
            label: const Text(
              "Start Shopping",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            onPressedCallback: () {
              //print("On Pressed!");
              Navigator.of(context).pushNamed('/menu');
            }),
      ],
    );
  }
}

class AdminView extends StatelessWidget {
  const AdminView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GradientButton(
            gradientColors: [mainDarkColor, mainColor],
            label: const Text(
              "Go to Dashboard",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            onPressedCallback: () {
              //print("On Pressed!");
              Navigator.of(context).pushNamed('/dashboard');
            }),
      ],
    );
  }
}


class UnAuthenticatedView extends StatelessWidget {
  const UnAuthenticatedView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GradientButton(
            gradientColors: [mainDarkColor, mainColor],
            label:  Text(
              "Login",
              style: TextStyle(
                fontSize: Responsive.width(4, context),
                color: Colors.white,
              ),
            ),
            onPressedCallback: () {
              //print("On Pressed!");
              Navigator.of(context).pushNamed('/sign_in_page');
            }),
        const SizedBox(
          height: 5,
        ),
        FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/register_page');
            },
            child:  Padding(
              padding:const EdgeInsets.all(20.0),
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: Responsive.width(4, context),
                  color: textColorLight,
                  fontWeight: FontWeight.bold,

                ),
              ),
            )),
      ],
    );
  }
}
