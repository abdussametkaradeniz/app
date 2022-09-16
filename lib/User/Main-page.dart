// ignore_for_file: prefer_const_constructors

import 'package:app/Colors.dart';
import 'package:app/User/Login-page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColorMain,
      body: SafeArea(
        child: Column(
          children: [
            //icon area
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: Center(
                  child: Icon(
                    Icons.fastfood,
                    size: 210,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //App name
            Container(
              child: Text(
                "TARİF DEFTERİM",
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //register
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 55, 55, 55),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent[100],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Divider(
                height: 4,
                thickness: 2,
                color: Colors.black,
              ),
            ),
            //login
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
