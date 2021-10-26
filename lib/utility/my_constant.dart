import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyConstant {
  
  //General
  static String appName = 'BullungThong';
  static String loginHero = 'login';

  //Route
  static String routeAuthen = '/authen';
  static String routeTerms = '/terms';
  static String routeProfile = '/profile';
  static String routeHomePage = '/homepage';
  static String routeTuyen = '/fortuyen';

  //Image
  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String googleImg = 'images/google.png';
  static String facebookImg = 'images/facebook.png';
  static String facebookImg2 = 'images/facebook2.png';
  static String callImg = 'images/call.png';

  //Color
  static Color bgColor = Color(0xff0085ff);

  //Style
  TextStyle h1Style() => TextStyle(
    fontSize: 24,
    color: Colors.black
  );

  TextStyle headerH1Style() => TextStyle(
    fontSize: 24,
    color: Colors.black,
    decoration: TextDecoration.underline
  );

  TextStyle kanitH1Style() => GoogleFonts.kanit(
    fontSize: 24,
    color: Colors.black
  );

  TextStyle headerKanitH1Style() => GoogleFonts.kanit(
    fontSize: 24,
    color: Colors.black,
    decoration: TextDecoration.underline
  );

  TextStyle h2Style() => TextStyle(
    fontSize: 20,
    color: Colors.black
  );

  TextStyle headerH2Style() => TextStyle(
    fontSize: 20,
    color: Colors.black,
    decoration: TextDecoration.underline
  );

  TextStyle kanitH2Style() => GoogleFonts.kanit(
    fontSize: 20,
    color: Colors.black
  );

  TextStyle headerKanitH2Style() => GoogleFonts.kanit(
    fontSize: 20,
    color: Colors.black,
    decoration: TextDecoration.underline
  );

  TextStyle h3Style() => TextStyle(
    fontSize: 16,
    color: Colors.black
  );
  
  TextStyle headerH3Style() => TextStyle(
    fontSize: 16,
    color: Colors.black,
    decoration: TextDecoration.underline
  );

  TextStyle kanitH3Style() => GoogleFonts.kanit(
    fontSize: 16,
    color: Colors.black
  );

  TextStyle headerKanitH3Style() => GoogleFonts.kanit(
    fontSize: 16,
    color: Colors.black,
    decoration: TextDecoration.underline
  );

  TextStyle customStyle(double size, Color color, TextDecoration decoration) => TextStyle(
    fontSize: size,
    color: color,
    decoration: decoration
  );

  TextStyle customKanitStyle(double size, Color color, TextDecoration decoration) => GoogleFonts.kanit(
    fontSize: size,
    color: color,
    decoration: decoration
  );
}