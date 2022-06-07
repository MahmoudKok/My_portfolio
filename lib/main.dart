//import 'dart:html';
import 'package:my_portfile2/Mobile/mobile.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'LX'),
          ]),
      debugShowCheckedModeBanner: false,
      home: const MobileScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF434343),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            child: Image.asset(
              'images/top.png',
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                  top: 20,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 45,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 160,
                      bottom: 10,
                      top: 20,
                      left: 30,
                    ),
                    child: Text(
                      'Hi , My name is ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 30),
                    child: Text(
                      'Mahmoud kokeh',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Flutter developer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        child: const Text(
                          'Contestsant programming',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      )),
    );
  }

  TextStyle MainWords() {
    return const TextStyle(
      color: Colors.white60,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }
}
