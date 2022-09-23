import 'package:app/Auth/AuthFirebase.dart';
import 'package:app/Colors.dart';
import 'package:app/Mainpage/App-main-page.dart';
import 'package:app/User/First-screen.dart';
import 'package:app/User/Login-page.dart';
import 'package:app/User/Sign-in-screen.dart';
import 'package:app/firebase_options.dart';
import 'package:app/widgetTree.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final User? user = Auth().currentuser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

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
      home: const WidgetTree(),
    );
  }
}
