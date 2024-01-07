import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

const spinkit = SpinKitChasingDots(
  color: Colors.blue,
  size: 40.0,
);

class _SplashScreenState extends State<SplashScreen> {
  Future splashTiming() async {
    Timer(Duration(seconds: 5), nextScreen);
  }

  void nextScreen() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => HomeScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    splashTiming();
    double Kwidth = MediaQuery.of(context).size.width;
    double Kheight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffF4F3F9),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/splash_pic.jpg',
                fit: BoxFit.cover,
                width: Kwidth * 0.9,
                height: Kheight * 0.5,
              ),
              SizedBox(
                height: Kheight * 0.04,
              ),
              Text(
                'TOP HEADLINES',
                style: GoogleFonts.anton(
                    letterSpacing: 6.0, fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(
                height: Kheight * 0.04,
              ),
              spinkit
            ],
          ),
        ));
  }
}
