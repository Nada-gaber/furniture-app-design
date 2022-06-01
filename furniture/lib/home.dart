import 'package:flutter/material.dart';
import 'package:furniture/button.dart';
import 'package:furniture/des.dart';
import 'package:furniture/desc.dart';
import 'package:furniture/fava.dart';
import 'package:get/get.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget container(String langname, Color colors, String frontImages) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Material(
                color: colors,
                borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Image(
                        image: AssetImage(frontImages),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Text(
                        langname,
                        style: new TextStyle(
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontSize: 25.0,
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
        ],
      ),
    );
  }

  List<String> frontImages = ['images/1.png', 'images/3.png'];
  List<Color> colors = <Color>[
    Color(0xFF84a59d),
    Color(0xFFFFD592),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 17, right: 15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: Color(0xFFFFD592),
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.list_sharp,
                          color: Colors.black54,
                          size: 32,
                        )),
                  ),
                  Card(
                      color: Color(0xFFFFD592),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black54,
                          size: 32,
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Text(
              'اثاث يناسب جميع الاذواق',
              style: new TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  package: 'google_fonts_arabic',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Text(
              'اثاث',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 25.0,
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            //   padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: MediaQuery.of(context).size.height * 0.45,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        onTap: () {
                          Get.to(() => Des());
                        },
                        container: container(
                          'كرسي خشبي',
                          colors[1],
                          frontImages[0],
                        ),
                      ),
                      Button(
                        onTap: () {
                          Get.to(() => Desc());
                        },
                        container: container(
                          'كرسي خشبي',
                          colors[1],
                          frontImages[1],
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
