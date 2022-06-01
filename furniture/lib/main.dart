// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture/fava.dart';
import 'package:furniture/home.dart';
import 'package:furniture/profile.dart';
import 'package:get/get.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFFFD592), // navigation bar color
    statusBarColor: Color(0xFFFFD592), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Furniture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: BottomNavBar(),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final Home _homePage = new Home();
  final Profile _profile = new Profile();
  final Fava _fava = new Fava();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _profile;
        break;
      case 1:
        return _homePage;
        break;
      case 2:
        return _fava;
        break;

      default:
        return Container(
          child: Center(
            child: Text("No Page Found"),
          ),
        );
    }
  }

  int _currentIndex = 1;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageChooser(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pageChooser(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFFFffb703),
            ),
            label: 'شخصي',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFFffb703),
              size: 35,
            ),
            label: 'رئيسي',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xFFFffb703),
            ),
            label: 'مفضلة',
          ),
        ],
      ),
    );
  }
}
