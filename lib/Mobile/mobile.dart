import 'package:flutter/material.dart';
import 'package:my_portfile2/Mobile/Component/Ciretifesnts.dart';
import 'package:my_portfile2/Mobile/Component/CodingKnowledge.dart';
import 'package:my_portfile2/Mobile/Component/Contacts.dart';
import 'package:my_portfile2/Mobile/Component/Knowledge.dart';
import 'package:my_portfile2/Mobile/Component/RecentWork.dart';

import '../animated_progress_indicator.dart';
import 'Common.dart';
import 'Component/Experince.dart';
import 'Component/Up_part.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen>
    with TickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  var animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animationController.addListener(() {
      setState(() {});
    });
    TickerFuture _tick = animationController.repeat();
    _tick.timeout(const Duration(milliseconds: 500 * 1), onTimeout: () {
      animationController.forward();
      animationController.repeat();
      animationController.stop(canceled: false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final precent = animationController.value * 100;
    return Scaffold(
      backgroundColor: const Color(0xFF434343),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpPart(
                wi: wi,
                hi: hi,
              ),
              SizedBox(
                height: hi * .01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: wi,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 58, 58, 58),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About me',
                          style: MainText(),
                        ),
                        SizedBox(
                          height: hi * .02,
                        ),
                        const Text(
                          'i\'m study Third year of IT (Information technology) engener at Damascus unversite in damascus , also i\'m contestant programming in ICPC competeteve.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              wordSpacing: 5,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: hi * .01,
              ),
              CodingKnowledge(
                hi: hi,
                wi: wi,
              ),
              SizedBox(
                height: hi * .01,
              ),
              Knowledge(
                hi: hi,
                wi: wi,
              ),
              SizedBox(
                height: hi * .02,
              ),
              Experince(
                wi: wi,
                hi: hi,
              ),
              SizedBox(
                height: hi * .02,
              ),
              RecentWork(
                hi: hi,
                wi: wi,
              ),
              SizedBox(
                height: hi * .02,
              ),
              Ciretifesnts(
                wi: wi,
                hi: hi,
              ),
              SizedBox(
                height: hi * .02,
              ),
              Contacts(
                hi: hi,
                wi: wi,
              ),
              SizedBox(
                height: hi * .1,
              ),
              SizedBox(
                height: hi * .01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
