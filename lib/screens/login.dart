import 'package:flutter/material.dart';
import 'package:flutter_login_example/constants/styles.dart';
import 'package:flutter_login_example/screens/reset_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            return Form(
              key: _formkey,
              child: Container(
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
                        margin: EdgeInsets.only(bottom: kMarginXS),
                        child: Text('My Awesome Logo', style: kTextColor),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: kMarginXS),
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
                            errorStyle: kInputValidationError,
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
                        margin: EdgeInsets.only(top: kMarginXS),
                        child: TextFormField(
                          controller: _passwordController,
                          style: kInputText,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: kIconDark,
                            ),
                            hintText: 'Password',
                            hintStyle: kInputPlaceholder,
                            fillColor: Colors.white,
                            filled: true,
                            errorStyle: kInputValidationError,
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
                        margin: EdgeInsets.only(top: kMarginXS),
                        child: RaisedButton(
                          color: kButtonPrimaryColor,
                          child: Text(
                            'Log in',
                            style: kTextColor,
                          ),
                          onPressed: () async {
                            if (_formkey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Authenticating...'),
                                ),
                              );

                              /// Do auth, make a request to an api
                            }
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: kMarginXS),
                        child: InkWell(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetPasswordScreen(),
                              ),
                            )
                          },
                          child: Text(
                            'Forgot your password?',
                            textAlign: TextAlign.right,
                            style: kTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
