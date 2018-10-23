import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unblock/login/sign_up.dart';

class LogIn extends StatefulWidget {
  @override
  createState() => LogInState();
}

class LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  final usernameOrEmailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _loading = false;

  Future<void> _attempLoginWithFacebook() async {
    FacebookLogin facebookLogin = FacebookLogin();
    print('is logged in? ' + (await facebookLogin.isLoggedIn).toString());
    var result = await facebookLogin.logInWithReadPermissions([
      'email',
      'public_profile',
    ]);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        try {
          FirebaseUser user = await FirebaseAuth.instance.signInWithFacebook(
            accessToken: result.accessToken.token,
          );
          print(await user.getIdToken());
        } catch (e) {
          print('Exception in firebase sign in');
          print(e);
          return;
        }

        Navigator.pushReplacementNamed(context, "/cities");
        break;
      case FacebookLoginStatus.error:
        print(result.errorMessage);
        break;
      default:
        break;
    }
  }

  Widget _getBackground() {
    return Positioned(
      top: 0.0,
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          foregroundDecoration: BoxDecoration(
            color: const Color(0x77000000),
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'assets/images/background.png',
            ),
          ),
        ),
      ),
    );
  }

  Widget _getLogo() {
    return Container(
      height: 50.0,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          'UNBLOCK',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _getLogInButton() {
    return Row(
      children: <Widget>[
        Expanded(child: Container()),
        GestureDetector(
          onTap: _attempLoginWithFacebook,
          child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0x42, 0x67, 0xB2, 1.0),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      right: 10.0,
                    ),
                    child: FittedBox(
                      child: Image.asset(
                        'assets/images/facebook_144.png',
                      ),
                    ),
                  ),
                  Text(
                    'Continue with Facebook',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Widget _getSignUp() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        height: 18.0,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                ),
              ),
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () => Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => SignUp())),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _getLogIn() {
    return Positioned(
      top: 0.0,
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(height: 100.0),
          _getLogo(),
          Expanded(
            flex: 10,
            child: Container(),
          ),
          _getLogInButton(),
          _getSignUp(),
        ],
      ),
    );
  }

  Widget _getLoading() {
    return Container(
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        reverse: true,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                _getBackground(),
                _loading ? _getLoading() : _getLogIn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
