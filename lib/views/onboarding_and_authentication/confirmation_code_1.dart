import 'package:bra/components/buttons.dart';
import 'package:bra/components/colors.dart';
import 'package:bra/components/sized_box.dart';
import 'package:bra/views/onboarding_and_authentication/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/modal.dart';

class ConfirmationCode extends StatelessWidget {
  const ConfirmationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: kDarkGrey,
                            ),
                          ),
                        ),
                        vh20,
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Enter 6-digit ',
                            style: GoogleFonts.livvic(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Verification code ',
                            style: GoogleFonts.livvic(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                vh50,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                            text:
                                'the verification code was sent to the phone number  ',
                            style: GoogleFonts.livvic(
                                color: const Color(0xff6d6d6d), fontSize: 16),
                            children: [
                              TextSpan(
                                  text: '+2348145678790',
                                  style: GoogleFonts.livvic(color: kDarkGrey)),
                              const TextSpan(text: ' please enter the code:'),
                            ]),
                      ),
                      vh40,
                      Form(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 10,
                                width: 30,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.headline6,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 30,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.headline6,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 30,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.headline6,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 30,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.headline6,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 30,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.headline6,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 30,
                                child: TextFormField(
                                  style: Theme.of(context).textTheme.headline6,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      vh30,
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Resend verification code',
                          style: GoogleFonts.livvic(
                              color: kDarkPurple,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      vh40,
                      FloatingActionButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return signInModal();
                            },
                          );
                        },
                        child: Icon(Icons.adaptive.arrow_forward),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
