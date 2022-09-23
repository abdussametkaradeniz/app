import 'package:app/Auth/AuthFirebase.dart';
import 'package:app/Colors.dart';
import 'package:app/Designs/Button-designs.dart';
import 'package:app/Mainpage/MainPageTopBar/Main-page-topbar.dart';
import 'package:app/User/Login-page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AppMainPage extends StatefulWidget {
  const AppMainPage({super.key});

  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColorMain,
      body: Center(
        child: Column(
          children: [
            MainPageTopBar(),
          ],
        ),
      ),
    );
  }
}
