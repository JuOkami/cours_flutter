import 'dart:convert';

import 'package:cours_flutter_provider/model/post.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CallTweetApi {

  static String url = "https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json";

  static Future<List<Post>> callApi() async {
    List<Post> loadedList = [];
    Response response = await http.get(Uri.parse(url));
    List<Map<String, dynamic>> tableau = (jsonDecode(response.body) as List).cast<Map<String, dynamic>>();
    for (Map<String, dynamic> item in tableau){
      loadedList.add(Post.fromJson(item));
    }
    return loadedList;
  }
}