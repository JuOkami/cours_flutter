import 'package:cours_flutter_provider/json_type_adapter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/post.dart';
import 'model/tweet.dart';

class HiveManager {

  late Box<Tweet> box;

  void getInit() async {
    await Hive.initFlutter();
    Hive.registerAdapter(JsonTypeAdapter<Tweet>(1, (tweet, id) => Tweet.fromJson(tweet), (tweet) => tweet.toJson()));
    getTweetBox();
  }

  void getTweetBox() async {
    box = await Hive.openBox<Tweet>('Tweet');
  }

  void saveTweet(Tweet tweet) {
    box.put(tweet.auteur, tweet);
  }

  List<Tweet> getTweets(){
    return box.values.toList();
  }


}