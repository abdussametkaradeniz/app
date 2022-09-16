import 'package:app/Colors.dart';
import 'package:app/Designs/TextField-designs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFieldDesigns(
            TextfieldIcon: FontAwesomeIcons.envelopesBulk,
            TextfieldIconColor: Maincolor,
            HintText: "Enter your email",
            borderRadius: BorderRadius.circular(20),
            fillColorTextfield: Colors.amber,
          ),
          SizedBox(
            height: 10,
          ),
          TextFieldDesigns(
            TextfieldIcon: FontAwesomeIcons.lock,
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
