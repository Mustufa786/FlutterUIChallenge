import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_one/widgets/divider_with_text.dart';
import 'package:flutter_ui_one/widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'images/signin.png',
                  height: 300,
                  width: 300,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Enter your email..",
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          splashColor: Colors.white70,
                          color: Color(0xFF2780EC),
                          //0xFF053F81
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Create an Account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DividerWithText("OR"),
                      SizedBox(
                        height: 10,
                      ),
                      LoginButton(
                        buttonText: "Connect With Facebook",
                        buttonColor: 0xFF053F81,
                        buttonType: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LoginButton(
                        buttonText: "Connect With Google",
                        buttonColor: 0xFFEA4334,
                        buttonType: 2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "By Registering you will agree our terms of services",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
