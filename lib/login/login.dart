import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:unblock/login/sign_up.dart';
import 'package:unblock/login_service.dart';

class LogIn extends StatefulWidget {
  @override
  createState() => LogInState();
}

class LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  final usernameOrEmailController = TextEditingController();
  final passwordController = TextEditingController();

  void attemptLogin() async {
    bool loggedIn = await LoginService.login(
        usernameOrEmailController.text, passwordController.text);

    if (loggedIn) {
      Navigator.pushReplacementNamed(context, "/cities");
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

  Widget _getLogInForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        children: <Widget>[
          Expanded(child: Container()),
          Expanded(
            flex: 12,
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      controller: usernameOrEmailController,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Username/Email',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _getLogInButton() {
    return Row(
      children: <Widget>[
        Expanded(child: Container()),
        Expanded(
          flex: 12,
          child: GestureDetector(
            onTap: attemptLogin,
            child: Container(
              height: 40.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text(
                'Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
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
          _getLogInForm(),
          _getLogInButton(),
          _getSignUp(),
        ],
      ),
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
                _getLogIn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
