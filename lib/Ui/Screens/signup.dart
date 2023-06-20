// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitchui/Ui/Screens/home.dart';
import 'package:twitchui/Ui/primaries/Colors.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    var schema = colorSchema();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: RadialGradient(
          colors: [schema.primary60, Colors.white],
          center: Alignment(.8, -1),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("resources/images/twitchLogo.png"),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Welcome to twitch!",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: schema.neutral80),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      child: Text(
                        "Social Media\nand Streaming\nfor Gamers",
                        textAlign: (MediaQuery.of(context).size.width < 500)
                            ? TextAlign.left
                            : TextAlign.center,
                        style: TextStyle(
                            color: schema.primary50,
                            fontSize: 32,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor:
                              schema.primary50, // background (button) color
                          foregroundColor: Colors.white, //
                        ),
                        onPressed: () {
                          print(MediaQuery.of(context).size.width);
                        },
                        child: Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Center(
                                child: Text("Sign Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))))),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, // thickness
                                  color: schema.primary50), // color
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor:
                              Colors.white, // background (button) color
                          foregroundColor: schema.primary50, //
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const homeScreen()));
                        },
                        child: Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Center(
                                child: Text(
                              "Skip",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )))),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ALready have an account ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: schema.neutral80),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: schema.primary50),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Or login with",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: schema.neutral80),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        platformWidget("logos_google.png", schema.primary50),
                        platformWidget("logos_facebook.png", schema.primary50),
                        platformWidget("logos_twitter.png", schema.primary50),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget platformWidget(logo, borderColor) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(width: 1, color: borderColor)),
        child: Image.asset("resources/images/$logo"),
      ),
    );
  }
}
