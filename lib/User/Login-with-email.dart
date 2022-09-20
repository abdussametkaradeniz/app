import 'package:app/Colors.dart';
import 'package:app/Designs/TextField-designs.dart';
import 'package:app/Global-state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalState store = GlobalState.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    store.set("EmailTextValue", _emailController.text.toString().trim());
    store.set("PasswordTextValue", _passwordController.text.toString().trim());

    return Container(
      child: Column(
        children: [
          TextFieldDesigns(
            ControllerT: _emailController,
            prefixIconImage: Image.asset("images/email.png"),
            TextfieldIconColor: Maincolor,
            HintText: "Enter your email",
            borderRadius: BorderRadius.circular(20),
            fillColorTextfield: Colors.amber,
          ),
          SizedBox(
            height: 10,
          ),
          TextFieldDesigns(
            ControllerT: _passwordController,
            prefixIconImage: Image.asset("images/key.png"),
            TextfieldIconColor: Maincolor,
            HintText: "Enter your password",
            borderRadius: BorderRadius.circular(20),
            fillColorTextfield: Colors.amber,
          ),
        ],
      ),
    );
  }
}
