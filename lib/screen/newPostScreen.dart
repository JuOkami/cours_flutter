import 'package:cours_flutter_provider/newPostForm.dart';
import 'package:cours_flutter_provider/postWall.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../footer.dart';
import '../header.dart';
import '../model/post.dart';
import '../myAppBar.dart';
import '../util/callTweetApi.dart';

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
              NewPostForm(),
            ],
          ),
          bottomNavigationBar: const Footer(),
        );
  }
}