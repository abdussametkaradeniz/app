import 'package:app/Colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldDesigns extends StatelessWidget {
  final Image prefixIconImage;
  //final IconData TextfieldIcon;
  final Color TextfieldIconColor;
  final String HintText;
  final BorderRadius borderRadius;
  final Color fillColorTextfield;
  const TextFieldDesigns({
    super.key,
    //required this.TextfieldIcon,
    required this.TextfieldIconColor,
    required this.HintText,
    required this.borderRadius,
    required this.fillColorTextfield,
    required this.prefixIconImage,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          /* icon: FaIcon(
          TextfieldIcon,
          color: TextfieldIconColor,
        ), */
          hintText: HintText,
          border: OutlineInputBorder(
            borderRadius: borderRadius,
          ),
          fillColor: fillColorTextfield,
          prefixIcon: prefixIconImage),
    );
  }
}
