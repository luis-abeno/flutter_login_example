import 'package:flutter/material.dart';
import 'package:flutter_login_example/constants/styles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: kContentMargin,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/images/lt_morales.png',
                    width: 100,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: kMarginTopXS),
                  child: TextFormField(
                    controller: _userNameController,
                    style: kInputText,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.people,
                        color: Color(0xFF4A4A4A),
                      ),
                      hintText: 'Username',
                      hintStyle: kInputPlaceholder,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Field cannot be empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: kMarginTopXS),
                  child: TextFormField(
                    controller: _passwordController,
                    style: kInputText,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF4A4A4A),
                      ),
                      hintText: 'Password',
                      hintStyle: kInputPlaceholder,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Field cannot be empty';
                      } else if (value.length < 8) {
                        return 'Password must have at least 8 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: kMarginTopXS),
                  child: RaisedButton(
                    color: kButtonPrimaryColor,
                    child: Text(
                      'Sign in',
                      style: kTextColor,
                    ),
                    onPressed: () async {
                      /// Do auth, make a request to an api
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: kMarginTopXS),
                  child: Text(
                    'Forgot your password?',
                    textAlign: TextAlign.right,
                    style: kTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
