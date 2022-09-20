import 'package:app/Colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      body: SafeArea(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Text("signed in as :" + user.email!),
        ),
      ),
    );
  }
}
