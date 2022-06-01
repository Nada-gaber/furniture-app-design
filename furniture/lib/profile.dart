import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget container(String langname, Color colors, String frontImages) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Material(
                color: colors,
                borderRadius: BorderRadius.circular(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image(
                          image: AssetImage(frontImages),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          langname,
                          style: new TextStyle(
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<String> frontImages = ['images/6.png', 'images/7.png'];
  List<Color> colors = <Color>[
    Color(0xFF84a59d),
    Color(0xFFFFD592),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 300.0,
                  color: Color(0xFFFFD592),
                ),
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            container('مشترياتي', colors[1], frontImages[0]),
                            container('  استلم', colors[1], frontImages[1]),
                          ],
                        );
                      }),
                ),
              ],
            ),
            // Profile image
            Positioned(
              top: 40.0, // (background container size) - (circle height / 2)
              child: Column(
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: new AssetImage("images/profile.png"),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    'بسمة',
                    style: new TextStyle(
                        color: Colors.white,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'ابحث عن اثاث مودرن ',
                    style: new TextStyle(
                        color: Colors.white,
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
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
