import 'package:bra/components/colors.dart';
import 'package:bra/components/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/home_members.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ImageProvider> imgList = [
      const AssetImage('assets/book12 1.png'),
      const AssetImage(
        'assets/book12 1.png',
      ),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
      const ExactAssetImage('assets/book12 1.png'),
    ];
    return SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: Scaffold(
            bottomNavigationBar: Container(
              height: Get.height * 0.11,//80,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <IconButton>[
                      IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.local_library_rounded)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.stacked_bar_chart)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz)),

                    ],
                  ),

                  Expanded(
                    child: Center(
                      child: Expanded(flex: 1,
                        child: Container(
                          height: 5,
                          width: Get.width*0.4,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
            ),
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
                              const Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.black,
                                size: 35,
                              )
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
                                  color: const Color(0xff102d3f),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Daily Motivation',
                                            style: GoogleFonts.livvic(
                                                color: const Color(0xffb2dee5),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600)),
                                        vh20,
                                        Text(
                                          'Whoever fights and workd hard will surely reap the reward',
                                          style: GoogleFonts.livvic(
                                              color: const Color(0xffb2dee5),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        vh20,
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                          vh20,
                          FlutterImageStack.providers(
                            providers: imgList,
                            totalCount: 10,
                            itemRadius: 50,
                            itemCount: 10,
                            showTotalCount: true,
                            itemBorderColor: Colors.black,
                            itemBorderWidth: 1,
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
        ));
  }
}
