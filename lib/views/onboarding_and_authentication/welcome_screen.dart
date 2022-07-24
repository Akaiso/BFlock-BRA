import 'package:bra/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'introduction_screens.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push((context),
          MaterialPageRoute(builder: (context) => IntroductionScreen1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: brandYellow,
          body: Center(
            child: Text(
              'Welcome',
              style: GoogleFonts.livvic(color: Colors.white, fontSize: 50,fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
