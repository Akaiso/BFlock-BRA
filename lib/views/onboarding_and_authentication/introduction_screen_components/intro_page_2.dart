
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/colors.dart';

introPage2(){
  return Column(
    children:  [
      const SizedBox(
        height: 50,
      ),
      const SizedBox(
        height: 250,
        width: 250,
        child: Image(
          image: AssetImage('assets/_Group_11.png'),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Text(
        'Read anyday, anytime',
        style: GoogleFonts.livvic(
            fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(
        height: 30,
      ),
      SizedBox(
          width: 290,
          child: Text(
            'All in your pocket, access anytime, anywhere, anydevice',
            style: GoogleFonts.livvic(fontSize: 18, color: grey1),
            textAlign: TextAlign.center,
          )),
    ],
  );
}