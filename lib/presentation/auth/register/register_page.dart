import 'package:ecommerce_app/application/auth/auth_bloc/authentication_bloc.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_event.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_state.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:moor_flutter/moor_flutter.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
        state.authStateOption.fold(
            () => null,
            (either) => either.fold(
                  (failures) {
                    FlushbarHelper.createError(
                            message: failures.map(
                                cancelledByUser: (_) => 'Cancelled By User',
                                serverError: (_) => 'Unknown Server Error',
                                emailInUse: (_) => 'Email Already In Use',
                                invalidCredentials: (_) =>
                                    'Invalid Email Password Combination'))
                        .show(context);
                  },
                  (_) {
                    Navigator.of(context).popAndPushNamed('/splash_screen');
                  },
                ));
      }, builder: (context, state) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Resister ",
                    style: TextStyle(
                      color: textDarkColor,
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Column(
                    children: [
                      TextFormField(
                          cursorColor: textColor,
                          style: TextStyle(color: textColor, fontSize: 15),
                          decoration:
                              formStyleMain.copyWith(labelText: "Full Name"),
                          onChanged: (value) {
                            context.read<AuthenticationBloc>().add(
                                AuthenticationEvent.usernameChanged(value));
                          },
                          validator: (_) => context
                              .read<AuthenticationBloc>()
                              .state
                              .username
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      invalidUsername: (_) =>
                                          "Invalid Full Name",
                                      orElse: () => null),
                                  (r) => null)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          cursorColor: textColor,
                          style: TextStyle(color: textColor, fontSize: 15),
                          decoration:
                              formStyleMain.copyWith(labelText: "Email"),
                          onChanged: (value) {
                            context
                                .read<AuthenticationBloc>()
                                .add(AuthenticationEvent.emailChanged(value));
                          },
                          validator: (_) => context
                              .read<AuthenticationBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      invalidEmail: (_) => "Invalid Email",
                                      orElse: () => null),
                                  (r) => null)),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          cursorColor: textColor,
                          obscureText: true,
                          style: TextStyle(color: textColor, fontSize: 15),
                          decoration:
                              formStyleMain.copyWith(labelText: "Password"),
                          onChanged: (value) {
                            context.read<AuthenticationBloc>().add(
                                AuthenticationEvent.passWordChanged(value));
                          },
                          validator: (_) => context
                              .read<AuthenticationBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      shortPassword: (_) => "Invalid Password",
                                      orElse: () => null),
                                  (r) => null)),
                      const SizedBox(
                        height: 40,
                      ),
                      GradientButton(
                          gradientColors: [mainDarkColor, mainColor],
                          label: state.isValidating
                              ? const SpinKitRing(
                                  color: Colors.white,
                                  size: 24,
                                  lineWidth: 3,
                                )
                              : const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                          onPressedCallback: () {
                            context.read<AuthenticationBloc>().add(
                                const AuthenticationEvent
                                    .registerButtonPressed());
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: textColorLight, fontSize: 13),
                          children: <TextSpan>[
                            const TextSpan(
                              text: "Already have an account? ",
                            ),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.read<AuthenticationBloc>().add(
                                      const AuthenticationEvent.resetState());
                                  Navigator.of(context)
                                      .popAndPushNamed('/sign_in_page');
                                },
                              text: 'Sign In',
                              style: TextStyle(
                                fontSize: 14,
                                color: textDarkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        );
      }),
    );
  }
}
