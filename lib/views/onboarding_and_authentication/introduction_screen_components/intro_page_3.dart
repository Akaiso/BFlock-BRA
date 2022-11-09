
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/colors.dart';

introPage3(){
  return Column(
    children:  [
      const SizedBox(
        height: 50,
      ),
      const SizedBox(
        height: 250,
        width: 250,
        child: Image(
          image: AssetImage('assets/_Group_32.png'),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Text(
        'Unlimited knowledge',
        style: GoogleFonts.livvic(
            fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(
        height: 30,
      ),
      SizedBox(
          width: 290,
          child: Text(
            'Help you carry an almost unlimited amount of books',
            style: GoogleFonts.livvic(fontSize: 18, color: kGrey1),
            textAlign: TextAlign.center,
          )),
    ],
  );
}