import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/buttons.dart';
import '../../components/colors.dart';
import '../../components/sized_box.dart';
import 'confirmation_code_1.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            vh50,
                            vh50,
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Sign in',
                                style: GoogleFonts.livvic(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    vh30,
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: lightPurple)),
                                  contentPadding: const EdgeInsets.only(top: 30),
                                  hintText: 'Username',
                                  hintStyle: GoogleFonts.livvic(
                                      color: lightText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18)),
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: lightPurple)),
                                  contentPadding: const EdgeInsets.only(top: 30),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.remove_red_eye,
                                        color: Color(0xffE9E7E7),
                                      ),
                                    ),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.livvic(
                                      color: lightText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18)),
                            ),
                            vh20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                hh50,

                              ],
                            ),
                            vh30,
                            extendedButton(() {
                              (){};
                            }, 'Sign in', darkGrey, brandYellow),
                          ],
                        ),
                      ),
                    ),
                    vh40,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          InkWell(
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.livvic(
                                  fontSize: 14,
                                  color: darkPurple,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          vh10,
                          InkWell(
                            child: Text(
                              'Forgot your password?',
                              style: GoogleFonts.livvic(
                                  fontSize: 14,
                                  color: darkPurple,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          vh50,
                          facebookButton(() {}, 'Log in with facebook',
                              Colors.white, const Color(0xff4460a0)),
                          vh30,
                          googleButton(
                                  () {}, 'Log in with Google', lightText, whiteButton),
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

