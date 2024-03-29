import 'package:cours_flutter_provider/create_tweet_form.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../myAppBar.dart';

class NewPostScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: MyAppBar(),
          ),
          body: Column(
            children: [
              CreateTweetForm(),
            ],
          ),
          bottomNavigationBar: const Footer(),
        );
  }
}