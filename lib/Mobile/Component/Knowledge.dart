import 'package:flutter/material.dart';
import 'package:my_portfile2/Mobile/mobileModel.dart';

import '../Common.dart';

class Knowledge extends StatefulWidget {
  final double hi;
  final double wi;
  Knowledge({
    Key? key,
    required this.hi,
    required this.wi,
  }) : super(key: key);

  @override
  State<Knowledge> createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  @override
  List<KnowledgeModel> knowldge = [
    KnowledgeModel(
      explain: 'Desing interfaces for web sites and mobiles apps',
      photo: 'assets/images/ui_ux.png',
      subject: 'UI/UX Design',
    ),
    KnowledgeModel(
      subject: 'Problem solving',
      explain:
          'Solve programming problems using algorthim and data structur sience',
      photo: 'assets/images/problem_solve.png',
    ),
    KnowledgeModel(
      subject: 'Apps developing',
      explain: 'Create and develop mobile apps using flutter framework',
      photo: 'assets/images/app_dev.png',
    ),
    KnowledgeModel(
      subject: 'CP',
      explain: 'Contestant at ICPC competitive programming contests',
      photo: 'assets/images/problem_solve.png',
    ),
    KnowledgeModel(
      subject: 'Git,Github',
      explain: 'Sharing projects and source code in Github',
      photo: 'assets/images/github.png',
    ),
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: widget.wi,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 58, 58, 58),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Knowledge',
                style: MainText(),
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              KnowledgeSquare(
                hi: widget.hi,
                wi: widget.wi,
                explain: 'Desing interfaces for web sites and mobiles apps',
                photo: 'assets/images/ui_ux.png',
                subject: 'UI/UX Design',
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              KnowledgeSquare(
                hi: widget.hi,
                wi: widget.wi,
                subject: 'Problem solving',
                explain:
                    'Solve programming problems using algorthim and data structur sience',
                photo: 'assets/images/problem_solve.png',
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              KnowledgeSquare(
                hi: widget.hi,
                wi: widget.wi,
                subject: 'Apps developing',
                explain:
                    'Create and develop mobile apps using flutter framework',
                photo: 'assets/images/app_dev.png',
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              KnowledgeSquare(
                hi: widget.hi,
                wi: widget.wi,
                subject: 'CP',
                explain: 'Contestant at ICPC competitive programming contests',
                photo: 'assets/images/problem_solve.png',
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              KnowledgeSquare(
                hi: widget.hi,
                wi: widget.wi,
                subject: 'Git,Github',
                explain: 'Sharing projects and source code in Github',
                photo: 'assets/images/github.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KnowledgeSquare extends StatelessWidget {
  KnowledgeSquare({
    Key? key,
    required this.hi,
    required this.wi,
    required this.explain,
    required this.photo,
    required this.subject,
  }) : super(key: key);

  final double hi;
  final double wi;
  String subject;
  String? explain;
  String? photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hi * .15,
      width: wi * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${subject}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: hi * .01,
                ),
                Text(
                  '${explain}',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(child: Image.asset('${photo}')),
            ))
      ]),
    );
  }
}
