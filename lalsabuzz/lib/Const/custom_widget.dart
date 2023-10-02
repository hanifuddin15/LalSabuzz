import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

fontStyle([double ?size, Color ?clr, FontWeight ?fw ]){
  return GoogleFonts.poppins(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}

const Color primaryColor = Color(0xffED4D2D);
const Color cardColor = Color(0xfff1f1f1);