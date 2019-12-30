import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginButton extends StatelessWidget {
  final String buttonText;
  final buttonColor;
  final int buttonType;

  // type 1 = facebook
  // type 2 = gmail

  LoginButton(
      {@required this.buttonText,
        @required this.buttonColor,
        @required this.buttonType});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        splashColor: Colors.white70,
        color: Color(buttonColor),
        //0xFF053F81
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Icon(
                buttonType == 1
                    ? FontAwesomeIcons.facebookSquare
                    : FontAwesomeIcons.google,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
