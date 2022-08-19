import 'package:bra/components/sized_box.dart';
import 'package:flutter/material.dart';


class GetStarted1 extends StatelessWidget {
  const GetStarted1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child:  Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              vh50,
              const Text('Explore a range of rooms'),
              vh20,
              const Text('Congratulations! you have unlocked the 3day reading challenge')
            ],
          )
        ),
      ),
    );
  }
}
