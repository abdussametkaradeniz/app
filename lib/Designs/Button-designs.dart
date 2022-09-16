import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonDesigns extends StatelessWidget {
  final String buttonText;
  final double VerticalPadding;
  final double HorizontalPadding;
  final Color ButtonColor;
  final BorderRadius borderRadius;
  final double fontsSize;
  final double height;

  const ButtonDesigns({
    required this.buttonText,
    required this.VerticalPadding,
    required this.HorizontalPadding,
    required this.ButtonColor,
    required this.borderRadius,
    required this.fontsSize,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: VerticalPadding, horizontal: HorizontalPadding),
        child: Container(
          width: screenWidth,
          height: height,
          decoration: BoxDecoration(
            color: ButtonColor,
            borderRadius: borderRadius,
          ),
          child: Center(
            child: Text(
              buttonText,
              style: GoogleFonts.robotoFlex(
                fontSize: fontsSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
