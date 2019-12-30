import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final dividerText;

  DividerWithText(this.dividerText);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 50,
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ),
        Text(
          dividerText,
          style: TextStyle(fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 50,
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
