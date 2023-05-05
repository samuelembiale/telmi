import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData lightTheme(){
    return ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  backgroundColor: Color(0xffFFF7E9),
    );
  }
}