import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPageTopBar extends StatefulWidget {
  const MainPageTopBar({super.key});

  @override
  State<MainPageTopBar> createState() => _MainPageTopBarState();
}

class _MainPageTopBarState extends State<MainPageTopBar> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    var TopbarHeight = MediaQuery.of(context).size.height / 6;
    return Container(
      width: ScreenWidth,
      height: TopbarHeight,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: TopbarHeight / 3,
          horizontal: 40,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Tarif Defterim",
              style: GoogleFonts.bebasNeue(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              Icons.menu,
            ),
          ],
        ),
      ),
    );
  }
}
