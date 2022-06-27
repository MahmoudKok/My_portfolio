// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Common.dart';
import '../mobileModel.dart';

class RecentWork extends StatefulWidget {
  final double hi;
  final double wi;
  const RecentWork({Key? key, required this.hi, required this.wi})
      : super(key: key);

  @override
  State<RecentWork> createState() => _RecentWorkState();
}

class _RecentWorkState extends State<RecentWork> {
  List<RecentWorkModel> project = [
    RecentWorkModel(
      photo: 'assets/images/icpc.jpg',
      name: 'CheapShope',
      explain: 'lap lap lap lap lap lap lap \n\n\nlap ',
    ),
    RecentWorkModel(
      photo: 'assets/images/icpc.jpg',
      name: 'CheapShope',
      explain: 'lap lap lap lap lap lap lap \n\n\nlap ',
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
                'Recent Work',
                style: MainText(),
              ),
              SizedBox(
                height: widget.hi * .01,
              ),
              SizedBox(
                height: widget.hi * .45,
                width: widget.wi,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 10),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: project.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = project[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ProjectCard(
                        hi: widget.hi,
                        wi: widget.wi,
                        photo: item.photo,
                        name: item.name,
                        explain: item.explain,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ProjectCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var photo;
  // ignore: prefer_typing_uninitialized_variables
  var name;
  // ignore: prefer_typing_uninitialized_variables
  var explain;
  final double hi;
  final double wi;
  ProjectCard({
    Key? key,
    required this.hi,
    required this.wi,
    this.explain,
    this.name,
    this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hi * .45,
      width: wi * .84,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: hi * .45 * .55,
            decoration:
                BoxDecoration(color: Colors.white, borderRadius: Cborder(30)),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Name',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: wi * .75,
              height: hi * .45 * .5,
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: FittedBox(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.contain,
                  child: Text(
                    'lap lap lap lap lap lap lap lap lap lap lap lap lap lap lap lap lap lap \nlap lap lap lap lap lap lap lap lap ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
