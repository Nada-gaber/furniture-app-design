import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Fava extends StatefulWidget {
  Fava({Key? key}) : super(key: key);

  @override
  State<Fava> createState() => _FavaState();
}

class _FavaState extends State<Fava> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Column contents vertically,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border_outlined,
              size: 80,
              color: Color(0xFFFffb703),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'ابدا بحفظ ما تعجب به',
              style: new TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  package: 'google_fonts_arabic',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
