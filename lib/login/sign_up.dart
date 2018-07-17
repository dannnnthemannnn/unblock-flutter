import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  Widget _getBackground() {
    return Positioned.fill(
      child: Container(
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset(
            'assets/images/background.png',
          ),
        ),
      ),
    );
  }

  Widget _getBackgroundDarkener() {
    return Positioned.fill(
      child: Container(
        color: const Color(0x77000000),
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

  Widget _getSignUpForm() {
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
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
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

  Widget _getSignUpButton() {
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
              'Sign Up',
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

  Widget _getBackButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        height: 18.0,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Text(
            'Back',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _getSignUp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(height: 100.0),
        _getLogo(),
        Expanded(
          flex: 10,
          child: Container(),
        ),
        _getSignUpForm(),
        _getSignUpButton(),
        _getBackButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _getBackground(),
        _getBackgroundDarkener(),
        _getSignUp(),
      ],
    );
  }
}
