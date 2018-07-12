import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatefulWidget {
  @override
  createState() => LogInState();
}

class LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  Widget _getBackground() {
    return Container(
      color: Colors.orange,
    );
  }

  Widget _getLogo() {
    return Container(
      height: 50.0,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          'LOGO',
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
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username/Email',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextFormField(
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
        Expanded(child: Container()),
      ],
    );
  }

  Widget _getSignUp() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        child: RichText(
          text: TextSpan(
            children: [
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
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _getLogIn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Container(),
        ),
        _getLogo(),
        Expanded(
          flex: 10,
          child: Container(),
        ),
        _getLogInForm(),
        _getLogInButton(),
        _getSignUp(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _getBackground(),
        _getLogIn(),
      ],
    );
  }
}
