import 'package:flutter/material.dart';
import 'package:twitchui/Ui/Screens/signup.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "poppins"),
    home: signUpScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
