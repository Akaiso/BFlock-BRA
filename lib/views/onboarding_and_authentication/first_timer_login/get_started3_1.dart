import 'package:bra/components/colors.dart';
import 'package:bra/components/sized_box.dart';
import 'package:bra/views/onboarding_and_authentication/first_timer_login/get_started3_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/buttons.dart';

class GetStartedFirst extends StatelessWidget {
  const GetStartedFirst({Key? key}) : super(key: key);

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
                'Explore a range of rooms',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w700, fontSize: 22, color: darkGrey),
              ),
              vh30,
              Text(
                'Congratulations! you have unlocked the 3days reading challenge',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: lightText),
                textAlign: TextAlign.center,
              ),
              vh70,
              Flexible(
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    addRepaintBoundaries: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 80,
                            childAspectRatio: 2 / 3,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 20.0),
                    itemCount: 6, //,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                tileMode: TileMode.mirror,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: const [
                                  0.4,
                                  0.6,
                                  0.7,
                                  0.8,
                                  0.9,
                                  1
                                ],
                                colors: [
                                  brandYellow,
                                  brandYellow.withOpacity(0.8),
                                  brandYellow.withOpacity(0.6),
                                  brandYellow.withOpacity(0.4),
                                  brandYellow.withOpacity(0.2),
                                  brandYellow.withOpacity(0.1)
                                ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              vh10,
                              Text(
                                'x Days Challenge',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.livvic(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: darkGrey),
                              ),
                              vh10,
                              Image.asset(
                                "assets/book12 1.png",
                                colorBlendMode: BlendMode.color,
                                color: brandYellow.withOpacity(0.1),
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ), //(myProducts[index]["name"]),
                      );
                    }),
              ),
              vh70,
              extendedButton(() {
                Get.to(() => const GetStartedSecond());
              }, 'Join Room', darkGrey, brandYellow)
            ],
          ),
        )),
      ),
    );
  }
}
