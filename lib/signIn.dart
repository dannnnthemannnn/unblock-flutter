import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget {
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

  Widget _getLoginButton() {
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
              TextSpan(text: 'Sign Up',
                style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _getLogin() {
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
        _getLoginButton(),
        _getSignUp(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _getBackground(),
        _getLogin(),
      ],
    );
  }
}
