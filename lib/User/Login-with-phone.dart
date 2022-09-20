import 'package:app/Colors.dart';
import 'package:app/Designs/TextField-designs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  @override
  Widget build(BuildContext context) {

  final _phoneController = TextEditingController();

    return Column(
      children: [
        Container(
          child: TextFieldDesigns(
            ControllerT: _phoneController,
            prefixIconImage: Image.asset("images/call.png"),
            TextfieldIconColor: Maincolor,
            HintText: "Enter your phone number",
            borderRadius: BorderRadius.circular(20),
            fillColorTextfield: Colors.amber,
          ),
        ),
      ],
    );
  }
}
