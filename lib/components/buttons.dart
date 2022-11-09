import 'package:bra/components/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

extendedButton(onTap, text, textColor, bottonColor) {
  return InkWell(
    onTap: onTap,
    child: Container(height: 52,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: bottonColor,
      ),
      width: Get.width * 0.9,
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: Center(
                   child: Text(
                      text,
                      style: GoogleFonts.livvic(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                 ),
               )
            ),
  );

}

facebookButton(onTap, text, textColor, bottonColor) {
  return InkWell(
    onTap: onTap,
    child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          color: bottonColor,
        ),
        width: Get.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                    width: 40,
                    child: Image.asset('assets/fblogo.png',),),
                //Icon(Icons.facebook),
               // hh10,
                Text(
                  text,
                  style: GoogleFonts.livvic(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
        )
    ),
  );

}

googleButton(onTap, text, textColor, bottonColor) {
  return InkWell(
    onTap: onTap,
    child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          color: bottonColor,
        ),
        width: Get.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 28,
                  width: 28,
                  child: Image.asset('assets/googlelogo.png',),),
                //Icon(Icons.facebook),
                 hh10,
                Text(
                  text,
                  style: GoogleFonts.livvic(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
        )
    ),
  );

}

modalExtendedButton(onTap, text, textColor, bottonColor) {
  return InkWell(
    onTap: onTap,
    child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          color: bottonColor,
        ),
       // width: Get.width / 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.livvic(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),
            ),
          ),
        )
    ),
  );

}


