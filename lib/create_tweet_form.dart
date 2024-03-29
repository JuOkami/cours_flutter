import 'package:cours_flutter_provider/hive_manager.dart';
import 'package:cours_flutter_provider/myAppTP.dart';
import 'package:flutter/material.dart';

import 'model/tweet.dart';

class CreateTweetForm extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Map<String, String> values = {};

    validate(BuildContext context){
      _formKey.currentState?.save();
      String submittedAuthor = values["author"] ?? "";
      String submittedContent = values["content"] ?? "";
      String submittedImage = values["image"] ?? "";
      Tweet tweet = Tweet(
          auteur: submittedAuthor,
          contenu: submittedContent,
          image: submittedImage
      );
      hiveManager.saveTweet(tweet);
      Navigator.pop(context);
    }
    

    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (value) {
                values['author'] = value ?? "";
              },
              decoration: InputDecoration(
                  labelText: "Auteur",
                  hintText: "Ex : MichelDu93"
              ),
            ),
            TextFormField(
              onSaved: (value) {
                values['content'] = value ?? "";
              },
              maxLines: 4,
              decoration: InputDecoration(
                  labelText: "Contenu",
                  hintText: "Ex : Blablabla"
              ),
            ),
            TextFormField(
              onSaved: (value) {
                values['image'] = value ?? "";
              },
              decoration: InputDecoration(
                  labelText: "Image",
                  hintText: "image.jpg"
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                validate(context);
              },
              child: const Text('Envoyer'),
            ),
          ],
        )
    );
  }

}