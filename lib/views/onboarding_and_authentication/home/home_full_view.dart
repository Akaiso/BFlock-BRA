import 'package:badges/badges.dart';
import 'package:bra/components/colors.dart';
import 'package:bra/components/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'home.dart';

class HomeFullView extends StatelessWidget {
  const HomeFullView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _img = [
      // const AssetImage('assets/_Group_.png'),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      Badge(
        badgeColor: Color(0xff42D893),
        position: BadgePosition.topEnd(top: -4, end: 9),
        child: Container(),
      ),
      // const AssetImage('assets/book12 1.png'),
      // const ExactAssetImage('assets/googlelogo.png'),
      // const ExactAssetImage('assets/book12 1.png'),
      // const ExactAssetImage('assets/_Group_.png'),
      // const ExactAssetImage('assets/book12 1.png'),
      // const ExactAssetImage('assets/googlelogo.png'),
      // const ExactAssetImage('assets/googlelogo.png'),
      // const ExactAssetImage('assets/_Group_.png'),
      // const ExactAssetImage('assets/googlelogo.png'),
    ];
    return SafeArea(
        child: WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: kScaffoldBg,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
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
                    padding:
                        const EdgeInsets.only(left: 20, top: 30, right: 20),
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
                          backgroundColor: Colors.grey,
                          child: Image.asset(
                            "assets/bf_logo_2.png",
                            fit: BoxFit.cover,
                          ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daily Motivation',
                            style: GoogleFonts.livvic(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: kDarkGrey),
                          ),
                          Badge(
                            position: BadgePosition.topEnd(top: 5, end: 5),
                            child: const Icon(
                              Icons.notifications_none_outlined,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      vh20,
                      Container(
                        height: 200,
                        width: Get.width,
                        color: const Color(0xff072031),
                        child: Center(
                            child: Container(
                          height: 140,
                          width: Get.width * 0.7,
                          color: Colors.transparent, //const Color(0xff102d3f),
                          child: Center(
                            child: Stack(
                              children: [
                                Container(
                                  height: 140,
                                  width: Get.width * 0.7,
                                  child: Image.asset('assets/Group 8158.png'),
                                ),

                                // Positioned(child: child)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 38.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Daily Motivation',
                                          style: GoogleFonts.livvic(
                                              color: const Color(0xffb2dee5),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600)),
                                      vh10,
                                      Text(
                                        'Whoever fights and workd hard will surely reap the reward',
                                        style: GoogleFonts.livvic(
                                            color: const Color(0xffb2dee5),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                      ),
                                      // vh20,
                                      SizedBox(
                                        width: Get.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Daniel James',
                                              style: GoogleFonts.livvic(
                                                  color:
                                                      const Color(0xffb2dee5),
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text('Billionaire Flock',
                                                style: GoogleFonts.livvic(
                                                    color:
                                                        const Color(0xffb2dee5),
                                                    fontSize: 7,
                                                    fontWeight:
                                                        FontWeight.w300))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                      ),
                      vh20,
                      FlutterImageStack.widgets(
                        // providers: _img,
                        children: _img,
                        totalCount: 9,
                        itemRadius: 50,
                        itemCount: 10,
                        showTotalCount: true,
                        itemBorderColor: Color(0xffF86D36),
                        itemBorderWidth: 3.0,
                        backgroundColor: Color(0xffE7E5F0),
                      ),
                      vh10,
                      Text(
                        '12 members are online',
                        style: GoogleFonts.livvic(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: kGrey1),
                      ),
                      vh10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'View All',
                            style: GoogleFonts.livvic(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xfff85d36)),
                          ),
                        ],
                      ),
                      vh10,
                      Text(
                        'My Activities',
                        style: GoogleFonts.livvic(
                            color: const Color(0xff202022),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      ListTile(
                        leading: CircularPercentIndicator(
                          radius: 25,
                          center: Text(
                            '0%',
                            style: GoogleFonts.livvic(
                                color: Color(0xff979797),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        title: Text('Tasks Submitted',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff2b1c1c))),
                        subtitle: Text('You have not submitted any task',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff7c7c7c))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'View All',
                            style: GoogleFonts.livvic(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xfff86d36)),
                          ),
                        ],
                      ),
                      ListTile(
                        leading: CircularPercentIndicator(
                          radius: 25,
                          center: Text(
                            '0%',
                            style: GoogleFonts.livvic(
                                color: Color(0xff979797),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        title: Text('Readings',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff2b1c1c))),
                        subtitle: Text('0/3 books completed',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff7c7c7c))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Start Reading',
                            style: GoogleFonts.livvic(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xfff86d36)),
                          ),
                        ],
                      ),
                      vh30,
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          'Checkout what other members are talking about',
                          style: GoogleFonts.livvic(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff2b1c1c)),
                        ),
                      ),
                      vh10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Join Discussion',
                            style: GoogleFonts.livvic(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xfff86d36)),
                          ),
                        ],
                      ),
                      vh30,
                      InkWell(
                          onTap: () {
                            Get.to(() => const Home(),
                                transition: Transition.rightToLeft,
                                curve: Curves.easeInOut,
                                duration: const Duration(milliseconds: 600));
                          },
                          child: const Icon(Icons.arrow_forward)),
                      vh50

                      // ListView.builder(
                      //   shrinkWrap: true,
                      //   itemCount: 3,
                      //   itemBuilder: (BuildContext context, index) {
                      //     return ListTile(
                      //       leading: CircleAvatar(),
                      //       title: Text('Tasks Submitted'),
                      //       subtitle: Text('You have not submitted any task'),
                      //
                      //     );
                      //   },
                      // )
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
