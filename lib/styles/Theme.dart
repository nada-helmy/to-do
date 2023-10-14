import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class MyTheme {

  static ThemeData light = ThemeData(
    scaffoldBackgroundColor:ColoR.background,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: ColoR.blue,
      titleTextStyle: GoogleFonts.laila(
          fontWeight:FontWeight.bold,
          fontSize:35,
          color:ColoR.white),
    ),
    iconTheme: IconThemeData(
      color:ColoR.blue,size: 30,
    ),
    textTheme: TextTheme(
      titleLarge:GoogleFonts.elMessiri(
        fontWeight:FontWeight.bold,
        fontSize:30,
        color:ColoR.white,
      ),
      bodyLarge:GoogleFonts.elMessiri(
        fontWeight:FontWeight.bold,
        fontSize:30,
        color:ColoR.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color:ColoR.white
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color:ColoR.white
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedItemColor: ColoR.blue,
      unselectedItemColor:ColoR.grey,
      type: BottomNavigationBarType.shifting,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape:StadiumBorder(
          side: BorderSide(
              color:ColoR.white,
              width: 5
          )
      ),
      backgroundColor:ColoR. blue,
    )

  );
}