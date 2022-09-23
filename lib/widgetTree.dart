import 'package:app/Auth/AuthFirebase.dart';
import 'package:app/Mainpage/App-main-page.dart';
import 'package:app/User/First-screen.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authstateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const AppMainPage();
        } else {
          return const FirstScreen();
        }
      },
    );
  }
}
