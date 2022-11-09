
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/colors.dart';


introPage1(){
  return Column(
    children:  [
      const SizedBox(
        height: 50,
      ),
     const SizedBox(
        height: 250,
        width: 250,
        child: Image(
          image: AssetImage('assets/_Group_.png'),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Text(
        'Have you read today?',
        style: GoogleFonts.livvic(
            fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(
        height: 30,
      ),
      SizedBox(
          width: 290 ,
          child: Text(
            'Read everyday. The benefits are well charted',softWrap: true,
            style: GoogleFonts.livvic(fontSize: 18, color: kGrey1),
            textAlign: TextAlign.center,
          )),
    ],
  );
}