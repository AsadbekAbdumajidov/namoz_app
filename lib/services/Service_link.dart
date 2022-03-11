import 'package:url_launcher/url_launcher.dart';

class ServiceUrl {
  static void launchURL(text) async {
    String _url = text;
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
