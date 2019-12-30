import 'package:flutter/material.dart';
import 'package:flutter_ui_one/ui/dashboard.dart';
import 'package:flutter_ui_one/ui/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}
