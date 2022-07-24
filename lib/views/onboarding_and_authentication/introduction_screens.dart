import 'package:bra/components/colors.dart';
import 'package:bra/views/onboarding_and_authentication/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'introduction_screen_components/intro_page_1.dart';
import 'introduction_screen_components/intro_page_2.dart';
import 'introduction_screen_components/intro_page_3.dart';

class IntroductionScreen1 extends StatefulWidget {
  const IntroductionScreen1({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen1> createState() => _IntroductionScreen1State();
}

class _IntroductionScreen1State extends State<IntroductionScreen1> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        PageView(controller: _controller, children: [
          introPage1(),
          introPage2(),
          introPage3(),
        ]),
        Container(
            alignment: Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotWidth: 8,
                dotHeight: 8,
                activeDotColor: brandYellow,
              ),
            )),
        Container(
          alignment: Alignment(0, 0.9),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: brandYellow,
              ),
              width: 300,
              height: 50,
              child: Center(
                  child: Text(
                'Skip',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
          ),
        )
      ]),
    ));
  }
}
