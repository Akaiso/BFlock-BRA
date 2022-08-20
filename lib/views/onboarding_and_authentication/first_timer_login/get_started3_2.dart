import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/buttons.dart';
import '../../../components/colors.dart';
import '../../../components/sized_box.dart';

class GetStartedSecond extends StatelessWidget {
  const GetStartedSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  vh70,
                  vh30,
                  Text(
                    'Setup your bookshelf',
                    style: GoogleFonts.livvic(
                        fontWeight: FontWeight.w700, fontSize: 22, color: darkGrey),
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
                        TextFormField(
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
                        Text('Book Cover Image(png,jpg,jpeg)', style: GoogleFonts.livvic(
                            color: lightText,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),),
                        vh10,
                        Container(
                          width: double.infinity,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                           // border: Border.all(style: BorderStyle.),
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.camera_alt_outlined),
                              Text('Capture', style: GoogleFonts.livvic(color: darkGrey, fontSize: 14, fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        vh30,
                      ],
                    ),
                  ),
                  extendedButton(() {}, 'Save & Continue', darkGrey, brandYellow)
                ],
              ),
            )),
      ),
    );
  }

}
