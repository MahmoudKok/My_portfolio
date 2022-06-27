// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_portfile2/AnimatedRate.dart';
import 'package:my_portfile2/Mobile/mobileModel.dart';

import '../Common.dart';

// ignore: must_be_immutable
class CodingKnowledge extends StatefulWidget {
  double hi;
  double wi;
  CodingKnowledge({
    required this.hi,
    required this.wi,
    Key? key,
  }) : super(key: key);

  @override
  State<CodingKnowledge> createState() => _CodingKnowledgeState();
}

class _CodingKnowledgeState extends State<CodingKnowledge> {
  List<CodingKnowledgeModel> rating = [
    CodingKnowledgeModel(
      name: 'Flutter',
      percent: 50,
      photo: 'assets/images/flutter.png',
    ),
    CodingKnowledgeModel(
      name: 'Dart',
      percent: 50,
      photo: 'assets/images/dart.png',
    ),
    CodingKnowledgeModel(
      name: 'C++',
      percent: 80,
      photo: 'assets/images/c++.png',
    ),
    CodingKnowledgeModel(
      name: 'Java',
      percent: 60,
      photo: 'assets/images/java.png',
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
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Coding Knowledge',
                style: MainText(),
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: widget.hi * .3,
                  width: widget.wi,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: rating.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = rating[index];
                      return RatingSlide(
                        hi: widget.hi,
                        wi: widget.wi,
                        name: item.name,
                        photo: item.photo,
                        rate: item.percent,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RatingSlide extends StatelessWidget {
  RatingSlide({
    Key? key,
    required this.hi,
    required this.wi,
    required this.name,
    required this.photo,
    required this.rate,
  }) : super(key: key);
  final double hi;
  final double wi;
  String? name;
  String? photo;
  double? rate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: hi * .4,
            width: wi * .6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Container(
            height: hi * .4 * .8,
            width: wi * .8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 238, 238, 238),
                radius: 50,
                child: Center(
                  child: CircleAvatar(
                    radius: 47,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('$photo'),
                  ),
                ),
              ),
              SizedBox(
                height: hi * .005,
              ),
              Text(
                '$name',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: hi * .001,
              ),
              SizedBox(
                  height: hi * .05,
                  width: wi * .7,
                  child: AnimatedRate(label: name!, percentage: rate!)),
              /*Stack(
                children: [
                  Container(
                    height: 20,
                    width: wi * .6,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 198, 218, 204),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    height: 20,
                    width: wi * .6 * (rate! / 100),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        '${rate.toString()}%',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),*/
            ],
          ),
        )
      ],
    );
  }
}



/*
SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RatingSlide(
                        hi: widget.hi,
                        wi: widget.wi,
                        name: 'Flutter',
                        rate: 50,
                        photo: 'assets/images/flutter.png',
                      ),
                      RatingSlide(
                        hi: widget.hi,
                        wi: widget.wi,
                        name: 'Dart',
                        rate: 50,
                        photo: 'assets/images/dart.png',
                      ),
                      RatingSlide(
                        hi: widget.hi,
                        wi: widget.wi,
                        name: 'C++',
                        rate: 80,
                        photo: 'assets/images/c++.png',
                      ),
                      RatingSlide(
                        hi: widget.hi,
                        wi: widget.wi,
                        name: 'Java',
                        rate: 60,
                        photo: 'assets/images/java.png',
                      ),
                    ],
                  ),
                ),
*/