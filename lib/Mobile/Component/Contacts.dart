import 'package:flutter/material.dart';

import '../Common.dart';
import '../mobileModel.dart';

class Contacts extends StatefulWidget {
  double hi;
  double wi;
  Contacts({Key? key, required this.hi, required this.wi}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<ContactsModel> contact = [
    ContactsModel(
      photo: 'assets/images/flutter_bird.png',
    ),
    ContactsModel(
      photo: 'assets/images/flutter_bird.png',
    ),
    ContactsModel(
      photo: 'assets/images/flutter_bird.png',
    ),
    ContactsModel(
      photo: 'assets/images/flutter_bird.png',
    ),
    ContactsModel(
      photo: 'assets/images/flutter_bird.png',
    ),
  ];
  @override
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
                'Conatact with me ',
                style: MainText(),
              ),
              SizedBox(
                height: widget.hi * .02,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/facebookgif.gif',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/telegramgif.gif',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/whatsappgif.gif',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/gethubgif.gif',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/linkingif.gif',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCircle extends StatelessWidget {
  const ContactCircle({Key? key, required this.wi, this.photo})
      : super(key: key);
  final double wi;
  final String? photo;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('${photo}'),
      radius: wi * .0555555556,
    );
  }
}
