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

  Widget _getBackground() {
    return Positioned(
      top: -MediaQuery.of(context).viewInsets.bottom,
      bottom: MediaQuery.of(context).viewInsets.bottom,
      left: 0.0,
      right: 0.0,
      child: GestureDetector(
        onTap: () {
          print('unfocus');
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
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

  Widget _getBackgroundDarkener() {
    return Positioned(
      top: -MediaQuery.of(context).viewInsets.bottom,
      bottom: MediaQuery.of(context).viewInsets.bottom,
      left: 0.0,
      right: 0.0,
      child: IgnorePointer(
        child: Container(
          color: const Color(0x77000000),
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
              child: Material(
                color: Colors.transparent,
                child: Theme(
                  data: ThemeData(
                    // This is a bug where the input decorations use this value
                    // for border color
                    hintColor: Colors.white,
                    primaryColor: Colors.white,
                  ),
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
            onTap: () => LoginService.login(
                usernameOrEmailController.text, passwordController.text),
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
      top: -MediaQuery.of(context).viewInsets.bottom,
      bottom: MediaQuery.of(context).viewInsets.bottom,
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
    return Stack(
      children: [
        _getBackground(),
        _getBackgroundDarkener(),
        _getLogIn(),
      ],
    );
  }
}
