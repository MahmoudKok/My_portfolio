import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:my_portfile2/Mobile/Component/Ciretifesnts.dart';
import 'package:my_portfile2/Mobile/Component/CodingKnowledge.dart';
import 'package:my_portfile2/Mobile/Component/Contacts.dart';
import 'package:my_portfile2/Mobile/Component/Knowledge.dart';
import 'package:my_portfile2/Mobile/Component/RecentWork.dart';
import 'package:my_portfile2/Mobile/Component/Up_part.dart';

import 'Common.dart';
import 'Component/Experince.dart';

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
    _tick.timeout(Duration(milliseconds: 500 * 1), onTimeout: () {
      animationController.forward();
      animationController.repeat();
      animationController.stop(canceled: false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    final precent = animationController.value * 100;
    return Scaffold(
      backgroundColor: const Color(0xFF434343),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: hi * .4,
                    width: double.infinity,
                    color: Colors.lightBlue,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 32),
                        child: Container(
                          height: hi * .35,
                          width: wi * .4,
                          color: Colors.redAccent,
                          child: Image.asset(
                            'assets/images/Me.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hi , i\'m',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              height: hi * .01,
                            ),
                            Text(
                              'Mahmoud Kokeh',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: hi * .05,
                            ),
                            Text(
                              'Flutter Developer',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: hi * .02,
                            ),
                            Text(
                              'Contestant\nProgramming',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: hi * .01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: wi,
                  decoration: BoxDecoration(
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
                        Text(
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
              /*Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: wi,
                  height: hi * .1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: LiquidLinearProgressIndicator(
                    value: animationController!.value,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.amberAccent),
                    center: Text(
                      '${precent.toStringAsFixed(0)}%',
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    direction: Axis.horizontal,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),*/
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
