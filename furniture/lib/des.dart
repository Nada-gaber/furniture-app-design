import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';


class Des extends StatelessWidget {
  const Des({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
                color: Color(0xFFFFD592),
                image: DecorationImage(
                    image: new AssetImage("images/1.png"), fit: BoxFit.cover)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.amber,
                child: Column(
                  children: [
                    Icon(
                      Icons.price_change_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      ' السعر : 200 جنيه',
                      style: new TextStyle(
                          fontFamily: ArabicFonts.Cairo,
                          color: Colors.white,
                          package: 'google_fonts_arabic',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 155,
                color: Colors.amber,
                child: Column(
                  children: [
                    Icon(
                      Icons.palette_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      ' اللون : اصفر',
                      style: new TextStyle(
                          fontFamily: ArabicFonts.Cairo,
                          color: Colors.white,
                          package: 'google_fonts_arabic',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:30.0,right: 30 ,bottom: 15),
            child: Text(
              ' : كرسي خشبي',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 23.0,
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(right:30.0),
            child: Text(
            
              ' عالي الجودة \n اربع ارجل \n مسند خلفي مبطن',
              textDirection: TextDirection.rtl,
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
