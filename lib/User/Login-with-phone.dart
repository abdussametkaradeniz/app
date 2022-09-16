import 'package:flutter/material.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your phone number",
              fillColor: Colors.white54,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}