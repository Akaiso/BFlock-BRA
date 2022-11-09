import 'package:bra/components/colors.dart';
import 'package:bra/views/onboarding_and_authentication/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }

//SvgPicture.asset('assets/logo.svg')

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: kBrandYellow,
          body: const Center(
            child: Image(
              image: AssetImage('assets/bf_logo_2.png'),
            ),
          ),
        ),
      ),
    );
  }
}
