import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String buttonText;

  DashboardButton(
      {@required this.color, @required this.icon, @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: color,
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 80,
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                  color: Colors.white ,
                ),
                SizedBox(height: 5,),
                Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
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
