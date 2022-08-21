import 'package:bra/components/buttons.dart';
import 'package:bra/components/colors.dart';
import 'package:bra/components/sized_box.dart';
import 'package:bra/views/onboarding_and_authentication/confirmation_code_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: Scaffold(
            backgroundColor: scaffoldBg,
            body: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      height: 188,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/headerBg1.png'),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding:  const EdgeInsets.only(left: 20, top: 30, right: 20
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                vh40,
                                vh20,
                                Text(
                                  'Welcome!',
                                  style: GoogleFonts.livvic(
                                      fontSize: 24, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Daniel James!',
                                  style: GoogleFonts.livvic(
                                      fontSize: 24, fontWeight: FontWeight.w600),
                                ),

                              ],
                            ),
                             CircleAvatar(
                              child: Image.asset("assets/bf_logo_2.png", fit: BoxFit.cover,),
                              radius: 30,
                            ),
                          ],
                        ),
                      ),
                    ),

                    vh20,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [

                          vh20,

                          vh40
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
