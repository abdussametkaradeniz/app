import 'dart:ui';

import 'package:app/Colors.dart';
import 'package:app/Designs/Button-designs.dart';
import 'package:app/User/Bottom-app-bar-buttons.dart';
import 'package:app/User/Login-with-email.dart';
import 'package:app/User/Login-with-phone.dart';
import 'package:app/User/Sign-in-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBarButtons(),
      backgroundColor: BackgroundColorMain,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              //icon
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Icon(
                    FeatherIcons.user,
                    size: 120,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //options
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 0;
                        });
                      },
                      child: Text(
                        "EMAIL",
                        style: GoogleFonts.candal(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: currentTab == 0 ? Maincolor : Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 1;
                        });
                      },
                      child: Text(
                        "PHONE",
                        style: GoogleFonts.candal(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: currentTab == 1 ? Maincolor : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //login area
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      currentTab == 0 ? LoginWithEmail() : LoginWithPhone(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => SignInScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 108, 162, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              //login button
              ButtonDesigns(
                buttonText: "Log in",
                VerticalPadding: 20,
                HorizontalPadding: 0,
                ButtonColor: Maincolor,
                borderRadius: BorderRadius.circular(20),
                fontsSize: 20,
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
