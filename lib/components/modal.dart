

import 'package:bra/components/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/onboarding_and_authentication/sign_in_page.dart';
import 'buttons.dart';
import 'colors.dart';

signInModal( ){
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 315,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          vh50,
          const Image(
            image: AssetImage("assets/Success.png"),
            width: 80,
            height: 80,
          ),
          vh20,
          DefaultTextStyle(
            style: GoogleFonts.livvic(
                color: darkPurple,
                fontSize: 16,
                fontWeight: FontWeight.w400), child: const Text('Your account created successfully'),
          ),
          vh20,
          AlertDialog(
              actionsAlignment:
              MainAxisAlignment.center,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                modalExtendedButton(
                        () {Get.to(const SignInPage());},
                    'Sign Up',
                    darkGrey,
                    brandYellow)
              ])
        ],
      ),
    ),
  );

}


loading( ){
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 315,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          vh50,
           const SizedBox(width:80,height: 80, child: CircularProgressIndicator()),
          vh50,
          DefaultTextStyle(
            style: GoogleFonts.livvic(
                color: darkPurple,
                fontSize: 16,
                fontWeight: FontWeight.w400), child: const Text('Wait a few seconds ...'),
          ),
          vh20,
        ],
      ),
    ),
  );

}















