import 'package:shared_preferences/shared_preferences.dart';

class SaveLogin {


  SaveLogin();

  getPref() async {
     await SharedPreferences.getInstance();
  }

  static setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  static setBool(String key, bool bool) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, bool);
  }

  static Future<bool> getBool(String key) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  }