import 'package:bra/components/buttons.dart';
import 'package:bra/components/colors.dart';
import 'package:bra/components/sized_box.dart';
import 'package:bra/views/onboarding_and_authentication/confirmation_code_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          backgroundColor: kScaffoldBg,
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
                          vh40,
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: kDarkGrey,
                            ),
                          ),
                          vh20,
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.livvic(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: kLightPurple)),
                                contentPadding: const EdgeInsets.only(top: 30),
                                hintText: 'Username',
                                hintStyle: GoogleFonts.livvic(
                                    color: kLightText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: kLightPurple)),
                                contentPadding: const EdgeInsets.only(top: 30),
                                hintText: 'Email',
                                hintStyle: GoogleFonts.livvic(
                                    color: kLightText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: kLightPurple)),
                                contentPadding: const EdgeInsets.only(top: 30),
                                hintText: 'Phone number',
                                hintStyle: GoogleFonts.livvic(
                                    color: kLightText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: kLightPurple)),
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
                                    color: kLightText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: kLightPurple)),
                                contentPadding: const EdgeInsets.only(top: 30),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.remove_red_eye,
                                      color: Color(0xffE9E7E7),
                                    ),
                                  ),
                                ),
                                hintText: 'Confirm password',
                                hintStyle: GoogleFonts.livvic(
                                    color: kLightText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18)),
                          ),
                          vh20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //  Checkbox(value: , onChanged: ),
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: kLightPurple, width: 2),
                                ),
                              ),
                              hh10,
                              Text(
                                'I have read and agree to',
                                style: GoogleFonts.livvic(
                                    fontSize: 14, color: kDarkGrey),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Text(
                                    ' Term and Conditions',
                                    style: GoogleFonts.livvic(
                                        fontSize: 14, color: kBrandYellow),
                                  )),
                            ],
                          ),
                          vh30,
                          extendedButton(() {
                            Get.to(const ConfirmationCode());
                          }, 'Sign up', kDarkGrey, kBrandYellow),
                        ],
                      ),
                    ),
                  ),
                  vh20,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        Text(
                          'Sign In',
                          style: GoogleFonts.livvic(
                              fontSize: 14,
                              color: kDarkPurple,
                              fontWeight: FontWeight.w400),
                        ),
                        vh20,
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Divider(
                                color: kLightPurple,
                                height: 0.4,
                              ),
                            ),
                            Center(
                              child: Container(
                                  color: kScaffoldBg,
                                  child: Text(
                                    'OR',
                                    style: GoogleFonts.livvic(
                                        color: kDarkPurple, fontSize: 12),
                                  )),
                            )
                          ],
                        ),
                        vh20,
                        facebookButton(() {}, 'Log in with facebook',
                            Colors.white, const Color(0xff4460a0)),
                        vh30,
                        googleButton(() {}, 'Log in with Google', kLightText,
                            kWhiteButton),
                        vh40
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
