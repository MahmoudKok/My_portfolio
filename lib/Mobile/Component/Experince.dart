import 'package:flutter/material.dart';

import '../Common.dart';
import '../mobileModel.dart';

class Experince extends StatefulWidget {
  final double hi;
  final double wi;
  Experince({Key? key, required this.hi, required this.wi}) : super(key: key);

  @override
  State<Experince> createState() => _ExperinceState();
}

class _ExperinceState extends State<Experince> {
  List<ExperinceModel> experince = [
    ExperinceModel(
      subject: 'ICPC',
      explain: 'ICPCICPCICPCICPCICPCICPCICPC',
      photo: 'assets/images/icpc.jpg',
    ),
    ExperinceModel(
      subject: 'Flutter',
      explain:
          'Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter ',
      photo: 'assets/images/flutter_bird.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: widget.wi,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 58, 58, 58),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Experince',
                style: MainText(),
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              SizedBox(
                height: widget.hi * .3,
                width: widget.wi,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: experince.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = experince[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: ExperinceSquare(
                        hi: widget.hi,
                        wi: widget.wi,
                        explain: item.explain,
                        photo: item.photo,
                        subject: item.subject,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExperinceSquare(
                      hi: widget.hi,
                      wi: widget.wi,
                      subject: 'ICPC',
                      explain: 'ICPCICPCICPCICPCICPCICPCICPC',
                      photo: 'assets/images/icpc.jpg',
                    ),
                    SizedBox(
                      width: widget.wi * .05,
                    ),
                    ExperinceSquare(
                      hi: widget.hi,
                      wi: widget.wi,
                      subject: 'Flutter',
                      explain:
                          'Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter Flutter ',
                      photo: 'assets/images/flutter_bird.png',
                    ),
                  ],
                ),
              )
*/

class ExperinceSquare extends StatelessWidget {
  ExperinceSquare({
    Key? key,
    required this.hi,
    required this.wi,
    required this.explain,
    required this.photo,
    required this.subject,
  }) : super(key: key);

  final double hi;
  final double wi;
  String? subject;
  String? explain;
  String? photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hi * .3,
      width: wi * .86,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  height: hi * .25,
                  width: wi * 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.normal,
                        ),
                      ]),
                  child: Container(
                    height: hi * .3,
                    width: wi * .86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 2,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Image.asset(
                        '$photo',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: wi * .05,
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$subject',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: hi * .01,
                        ),
                        SizedBox(
                          height: hi * .3 * .65,
                          width: wi * .86,
                          child: Text(
                            '$explain',
                            style: TextStyle(
                                overflow: TextOverflow.fade,
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
