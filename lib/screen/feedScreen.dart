import 'package:cours_flutter_provider/postWall.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../footer.dart';
import '../header.dart';
import '../model/post.dart';
import '../myAppBar.dart';
import '../util/callTweetApi.dart';

class FeedScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: MyAppBar(),
          ),
          body: Column(
            children: [
              Header(),
              PostWall(),
            ],
          ),
          bottomNavigationBar: const Footer(),
        );
  }
}