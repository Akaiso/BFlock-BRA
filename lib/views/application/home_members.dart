import 'package:bra/views/application/homeTask.dart';
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
                              vh20,
                              Container(
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 20),
                                    hintText: 'Search members',
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                  ),
                                ),
                              ),
                              vh20,
                              ListView.builder(itemBuilder: (context, index){
                                return ListTile(

                                );
                              }),
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
                              vh30,
                              vh30,
                              InkWell(
                                  onTap: () {
                                    Get.to(()=> const HomeTasks(),
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
          ),
        ));
  }
}
