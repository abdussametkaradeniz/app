import 'package:app/Colors.dart';
import 'package:app/Designs/Button-designs.dart';
import 'package:app/Padding-settings.dart';
import 'package:app/User/Bottom-app-bar-buttons.dart';
import 'package:app/User/Login-page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: BackgroundColorMain,
      bottomNavigationBar: BottomAppBarButtons(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  //icon area
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Lottie.network(
                          "https://assets4.lottiefiles.com/packages/lf20_jbt4j3ea.json"),
                    ),
                  ),
                  //textfiels area
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: mainpadding, horizontal: mainpadding),
                    child: Container(
                      child: Column(
                        children: [
                          //username area
                          TextField(
                            decoration: InputDecoration(
                              icon: FaIcon(
                                FontAwesomeIcons.user,
                                color: Maincolor,
                              ),
                              hintText: "Enter your username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //Email area
                          TextField(
                            decoration: InputDecoration(
                              icon: FaIcon(
                                FontAwesomeIcons.envelope,
                                color: Maincolor,
                              ),
                              hintText: "Enter your Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //text area
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ",
                        style: GoogleFonts.robotoSlab(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LoginPage())));
                        },
                        child: Text(
                          "Log in",
                          style: GoogleFonts.robotoSlab(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //sign in button
                  ButtonDesigns(
                      buttonText: "Sign in",
                      VerticalPadding: 20,
                      HorizontalPadding: 20,
                      ButtonColor: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      fontsSize: 16,
                      height: 60),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
