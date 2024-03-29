import 'package:cours_flutter_provider/hive_manager.dart';
import 'package:cours_flutter_provider/myAppTP.dart';
import 'package:cours_flutter_provider/tweetDisplay.dart';
import 'package:cours_flutter_provider/tweet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/tweet.dart';

class TweetWall extends StatelessWidget {
  const TweetWall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


  List<Tweet> tweets = context.watch<TweetProvider>().liste;

    return Expanded(
      child: ListView.separated(
        itemCount: tweets.length,
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(
                height : 5,
                child : ColoredBox(
                  color : Colors.blue.shade50,
                )
            ),
        itemBuilder: (BuildContext context, int index){
          return TweetDisplay(
              auteur : tweets[index].auteur,
              image : tweets[index].image,
              contenu : tweets[index].contenu);
        },
      ),
    );
  }
}