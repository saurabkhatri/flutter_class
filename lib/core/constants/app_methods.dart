import 'package:url_launcher/url_launcher.dart';

class AppMethods
{
  static Future<void> launchCaller({required String actionMsg}) async {
    if (!await launchUrl(Uri.parse(actionMsg))) {
      throw Exception('Could not launch $actionMsg');
    }
  }


}

