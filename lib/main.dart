import 'package:coffeebreak/src/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
