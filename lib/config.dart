import 'dart:ui';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Config {
  static String baseUrl = 'https://pos4you.hudhudcloud.com/';
  static int? userId;
  String clientId = '19',
      clientSecret = '3NVSlp4PjXnFox6dXXfHl7N8X334nkN2NJS8xSY2',
      copyright = '\u00a9',
      appName = "HudHud POS",
      version = 'V 1.7.2',
      splashScreen = '${Config.baseUrl}uploads/mobile/welcome.jpg',
      loginScreen = '${Config.baseUrl}uploads/mobile/login.png',
      noDataImage = '${Config.baseUrl}uploads/mobile/no_data.jpg',
      defaultBusinessImage = '${Config.baseUrl}uploads/business_default.jpg';
  final bool syncCallLog = false, showRegister = false, showFieldForce = false;

  //quantity precision       //currency precision   //call_log sync duration
  static int quantityPrecision = 2,
      currencyPrecision = 2,
      callLogSyncDuration = 10;

  //List of locale language code
  List locale = ['en', 'ar', 'de', 'fr', 'es', 'tr', 'id', 'my', 'ku', 'vi'];
  String defaultLanguage = 'en';

  //List of locales included
  List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('ar', ''),
    Locale('de', ''),
    Locale('fr', ''),
    Locale('es', ''),
    Locale('tr', ''),
    Locale('id', ''),
    Locale('my', ''),
    Locale('ku', ''),
    Locale('vi', ''),
  ];

  //dropdown items for changing language
  List<Map<String, dynamic>> lang = [
    {'languageCode': 'en', 'countryCode': 'US', 'name': 'English'},
    {'languageCode': 'ar', 'countryCode': '', 'name': 'العربي'},
    {'languageCode': 'de', 'countryCode': '', 'name': 'Deutsche'},
    {'languageCode': 'fr', 'countryCode': '', 'name': 'Français'},
    {'languageCode': 'es', 'countryCode': '', 'name': 'Español'},
    {'languageCode': 'tr', 'countryCode': '', 'name': 'Türkçe'},
    {'languageCode': 'id', 'countryCode': '', 'name': 'Indonesian'},
    {'languageCode': 'my', 'countryCode': '', 'name': 'မြန်မာ'},
    {'languageCode': 'ku', 'countryCode': '', 'name': 'کوردی'},
    {'languageCode': 'vi', 'countryCode': '', 'name': 'Tiếng Việt'}
  ];

  //final initialPosition = LatLng(20.46752985010792, 82.92005813910752);
  // final String googleAPIKey = 'AIzaSyDW5xTAzWCNsaBvLjA2BIVkeYhmBjXILQM';
}
