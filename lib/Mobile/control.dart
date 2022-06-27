import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Control extends GetxController {
  openBrowser(var url) {
    launchUrl(url);
  }
}
