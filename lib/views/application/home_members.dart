import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/colors.dart';
import '../../components/sized_box.dart';

class HomeMembers extends StatelessWidget {
  const HomeMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: DefaultTabController(
            length: 4,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              vh40,
                              vh20,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:const [
                                  Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30,),
                                  Icon(Icons.notifications_none_outlined, color: Colors.black,size: 30,)
                                ],
                              ),
                              vh20,
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
                              leading: const CircleAvatar(),
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
                              leading: const CircleAvatar(),
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
                                  Get.to(()=> const HomeMembers(),
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
          ),
        ));
  }
}
