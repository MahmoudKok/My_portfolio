// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:my_portfile2/Mobile/control.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';
import '../Common.dart';
import '../mobileModel.dart';

// ignore: must_be_immutable
final Control _controller = Control();

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
        decoration: const BoxDecoration(
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
                  const Padding(
                    padding: EdgeInsets.all(18),
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
                          url:
                              'https://www.facebook.com/profile.php?id=100009444702867',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/telegramgif.gif',
                          url: 'https://t.me/Mahmoud_kok',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/whatsappgif.gif',
                          url: '///',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/gethubgif.gif',
                          url: 'mahmoudkoka39@gmail.com',
                        ),
                        ContactCircle(
                          wi: widget.wi,
                          photo: 'assets/images/contact/linkingif.gif',
                          url:
                              'https://www.linkedin.com/in/mahmod-koka-20a155214/',
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18),
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
  const ContactCircle(
      {Key? key, required this.wi, required this.photo, required this.url})
      : super(key: key);
  final double wi;
  final String photo;
  final url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (url == 'mahmoudkoka39@gmail.com') {
          final toemail = url;
          final subject = 'messge from portfilio';
          final messge = 'Hello Mahmoud!\n';
          final url2 = 'mailto:$toemail?subject=$subject&body=$messge';
          await launch(url2);
        } else {
          await launch(url);
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('$photo'),
        radius: wi * .0555555556,
      ),
    );
  }
}
