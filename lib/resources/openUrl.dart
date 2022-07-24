import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';




Future<void> _launchUrl(String url) async {
  final url_link = Uri.parse(url);
  if (!await launchUrl(url_link)) {
    throw 'Could not launch $url_link';
  }
}
