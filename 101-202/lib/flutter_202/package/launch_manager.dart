import 'package:demos/flutter_202/package_learn.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//sadece classlar kullansın diyorsan on Widget
mixin LaunchMixin {
  Future<void> _launchUrl(String _url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
