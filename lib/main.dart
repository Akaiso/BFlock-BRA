import 'package:bra/views/onboarding_and_authentication/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main()=>runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    WidgetsFlutterBinding.ensureInitialized();
    return const GetMaterialApp(
      title: "Billionaire flock -a book review app",
      home: SplashScreen(),
    );
  }
}
