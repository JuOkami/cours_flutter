import 'package:cours_flutter_provider/myAppTP.dart';
import 'package:flutter/material.dart';

import 'model/tweet.dart';

class TweetProvider with ChangeNotifier{

List<Tweet> liste = [];

List<Tweet> baseTweets = [
  Tweet(image : "https://static.nationalgeographic.fr/files/styles/image_3200/public/meraxes-credit-carlos-papolio.jpg",
    auteur : "Tirageossaure@TRex",
    contenu : "Vraiment les dinosaures je trouve ca vraiment sympathique. Surtout ceux avec de grosses dents je trouve que c'est les plus mignons et j'ai envie de leur faire des gouzis gouzis",
  ),
  Tweet(auteur : "GamerDu38@Gaming",
    contenu : "P'tit FIFA ?",
    image : "https://c8.alamy.com/comp/HRAH00/nerd-boy-excited-by-goal-scored-during-soccer-competition-HRAH00.jpg",
  ),
  Tweet(auteur: "BernardPivot@AVC",
    contenu: "Fète ain effaur aveque lor togrrave lé jeune voyon",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO8foI2B5sIYZNRivhTLyk2bcie4nMxdZ9uw3vRQ-1Pw&s",
  ),
  Tweet(auteur: "Brendan@LeBreton",
      contenu: "Vous voulez voir mon nouveau vélo musculaire ? Il à toutes les options. Mais une seule chaussure.",
      image: "https://www.theriderpost.com/uploads/media_content//1/images/barriere.jpg"
  ),
];

TweetProvider(){
  liste = hiveManager.getTweets();
  for (Tweet tweet in baseTweets){
    liste.add(tweet);
    notifyListeners();
  }
}
}