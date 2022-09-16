import 'package:app/Colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomAppBarButtons extends StatefulWidget {
  const BottomAppBarButtons({super.key});

  @override
  State<BottomAppBarButtons> createState() => _BottomAppBarButtonsState();
}

class _BottomAppBarButtonsState extends State<BottomAppBarButtons> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: BackgroundColorMain,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 45,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  //twitter
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 45,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  //google
                  FaIcon(
                    FontAwesomeIcons.google,
                    size: 45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
