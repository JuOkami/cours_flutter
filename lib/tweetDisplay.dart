import 'package:flutter/material.dart';

import 'barIconButton.dart';
import 'barTextButton.dart';

class TweetDisplay extends StatelessWidget {

  final String image;
  final String auteur;
  final String contenu;

  const TweetDisplay({
    super.key,
    required this.auteur,
    required this.contenu,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> listeTweet = ["Répondre", "Retweet", "Favoris"]
        .map((e) => BarTextButton(texte: e, color: Colors.black))
        .toList();

    return Container(
      child: Column(children: [
        Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              this.image,
              height: 200,
              width: 200,
              fit : BoxFit.cover,),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left : 10),
                  child: Text(this.auteur,
                    style : TextStyle(fontStyle: FontStyle.italic),
                    textAlign: TextAlign.left,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(this.contenu,
                    textAlign: TextAlign.left,),
                ),
              ],
            ),
          ),
        ]),
        Row(children: [
          BarIconButton(icon : Icon(Icons.reply), color : Colors.black),
          BarIconButton(icon : Icon(Icons.repeat), color : Colors.black),
          BarIconButton(icon : Icon(Icons.star), color : Colors.black),
        ])
      ]),
    );
  }
}