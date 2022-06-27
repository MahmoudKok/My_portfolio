// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:my_portfile2/Mobile/mobileModel.dart';

import '../Common.dart';

// ignore: must_be_immutable
class Ciretifesnts extends StatefulWidget {
  double hi;
  double wi;
  Ciretifesnts({Key? key, required this.hi, required this.wi})
      : super(key: key);

  @override
  State<Ciretifesnts> createState() => _CiretifesntsState();
}

class _CiretifesntsState extends State<Ciretifesnts> {
  List<CiretifesntsModel> cire = [
    CiretifesntsModel(
      photo: 'assets/images/flutter_bird.png',
    ),
    CiretifesntsModel(
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
                'Ciretifesnts',
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
                  itemCount: cire.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = cire[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 9.0),
                      child: CireSquare(
                          wi: widget.wi, hi: widget.hi, photo: item.photo),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CireSquare extends StatelessWidget {
  const CireSquare(
      {Key? key, required this.wi, required this.hi, required this.photo})
      : super(key: key);

  final double wi;
  final double hi;
  final String? photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wi * .86,
      height: hi * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200,
            ),
            child: Image.asset('$photo'),
          ),
        ),
      ),
    );
  }
}
