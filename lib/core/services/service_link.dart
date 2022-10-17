// ignore_for_file: deprecated_member_use
import 'package:url_launcher/url_launcher.dart';

class ServiceUrl {
  static void launchURL(text) async {
    String url = text;
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
