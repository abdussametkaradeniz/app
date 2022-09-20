import 'package:app/Colors.dart';
import 'package:app/Main-page.dart';
import 'package:app/Mainpage/App-main-page.dart';
import 'package:app/User-state.dart';
import 'package:app/User/First-screen.dart';
import 'package:app/User/Login-page.dart';
import 'package:app/User/Sign-in-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: UserState(),
    );
  }
}
