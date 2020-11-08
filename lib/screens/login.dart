import 'package:flutter/material.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/images/lt_morales.png',
                  width: 100,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                  child: TextFormField(
                    controller: _userNameController,
                    style: TextStyle(fontSize: 22, color: Color(0xFF4A4A4A)),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.people,
                        color: Color(0xFF4A4A4A),
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Color(0xFF8F8F8F)),
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
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                  child: TextFormField(
                    controller: _passwordController,
                    style: TextStyle(fontSize: 22, color: Color(0xFF4A4A4A)),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF4A4A4A),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color(0xFF8F8F8F)),
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
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                  child: RaisedButton(
                    child: Text('Sign in'),
                    onPressed: () async {
                      /// Do auth
                    },
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                  child: Text('Forgot your password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
