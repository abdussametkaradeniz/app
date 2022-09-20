import 'package:app/Colors.dart';
import 'package:app/Designs/Button-designs.dart';
import 'package:app/Designs/TextField-designs.dart';
import 'package:app/Mainpage/App-main-page.dart';
import 'package:app/User/First-screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class SignInScreen2 extends StatefulWidget {
  const SignInScreen2({super.key});

  @override
  State<SignInScreen2> createState() => _SignInScreen2State();
}

class _SignInScreen2State extends State<SignInScreen2> {
  final _SignIn2NameController = TextEditingController();
  final _SignIn2SurnameController = TextEditingController();
  final _SignIn2PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColorMain,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            child: Center(
              child: Column(
                children: [
                  //icon area
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Lottie.network(
                          "https://assets4.lottiefiles.com/packages/lf20_q5pk6p1k.json"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //name
                  TextFieldDesigns(
                    ControllerT: _SignIn2NameController,
                    prefixIconImage: Image.asset("images/id.png"),
                    TextfieldIconColor: Maincolor,
                    HintText: "Enter your name",
                    borderRadius: BorderRadius.circular(20),
                    fillColorTextfield: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //surname
                  TextFieldDesigns(
                    ControllerT: _SignIn2SurnameController,
                    prefixIconImage: Image.asset("images/id-card.png"),
                    TextfieldIconColor: Maincolor,
                    HintText: "Enter your surname",
                    borderRadius: BorderRadius.circular(20),
                    fillColorTextfield: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //password
                  TextFieldDesigns(
                    ControllerT: _SignIn2PasswordController,
                    prefixIconImage: Image.asset("images/key.png"),
                    TextfieldIconColor: Maincolor,
                    HintText: "Enter your password",
                    borderRadius: BorderRadius.circular(20),
                    fillColorTextfield: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonDesigns(
                    buttonText: "Finish!",
                    VerticalPadding: 20,
                    HorizontalPadding: 20,
                    ButtonColor: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    fontsSize: 16,
                    height: 50,
                    TapButton: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((BuildContext context) => AppMainPage()),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
