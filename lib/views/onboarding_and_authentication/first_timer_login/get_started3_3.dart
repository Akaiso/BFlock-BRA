import 'package:bra/views/onboarding_and_authentication/first_timer_login/get_started3_4.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/buttons.dart';
import '../../../components/colors.dart';
import '../../../components/sized_box.dart';

class GetStartedThird extends StatelessWidget {
  const GetStartedThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {

          return true;
        },
        child: GestureDetector(
          onTap: (){FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }},
          child: Scaffold(
              body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  vh70,
                  vh30,
                  Text(
                    'Add Book 2',
                    style: GoogleFonts.livvic(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: darkGrey),
                  ),
                  vh30,
                  Text(
                    'Tell us Three(3) books you will be reading as soon as possible',
                    style: GoogleFonts.livvic(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: lightText),
                    textAlign: TextAlign.center,
                  ),
                  vh30,
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: lightPurple)),
                              contentPadding: const EdgeInsets.only(top: 30),
                              hintText: 'Book Title',
                              hintStyle: GoogleFonts.livvic(
                                  color: lightText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18)),
                        ),
                        vh20,
                        TextFormField(autofocus: false,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: lightPurple)),
                              contentPadding: const EdgeInsets.only(top: 30),
                              hintText: 'Author\'s name',
                              hintStyle: GoogleFonts.livvic(
                                  color: lightText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18)),
                        ),
                        vh50,
                        Text(
                          'Book Cover Image(png,jpg,jpeg)',
                          style: GoogleFonts.livvic(
                              color: lightText,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        vh10,
                        DottedBorder(
                          color: const Color(0xffd8d8d8),
                          strokeWidth: 1,
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          dashPattern: const [2, 2],
                          child: Container(
                            width: double.infinity,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.camera_alt_outlined),
                                Text(
                                  'Capture',
                                  style: GoogleFonts.livvic(
                                      color: darkGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        vh30,
                      ],
                    ),
                  ),
                  extendedButton(() {
                    Get.to(() => const GetStartedFourth(),transition: Transition.rightToLeft,
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 600));
                  }, 'Save & Continue', darkGrey, brandYellow)
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
