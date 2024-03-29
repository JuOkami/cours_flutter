import 'package:cours_flutter_provider/postDisplay.dart';
import 'package:cours_flutter_provider/postProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/post.dart';

class PostWall extends StatelessWidget {

  PostWall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    List<Post> posts = context.watch<PostProvider>().posts;

    if (posts.isEmpty){
      return Padding(
        padding : EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                  height : 100,
                  child: Text("Chargement...",
                  style : TextStyle(
                    color: Colors.blue.shade300,
                    fontSize: 30,
                  ))),
              SizedBox(
                height : 200,
                  width : 200,
                  child: CircularProgressIndicator(
                    color: Colors.blue.shade300,
                    backgroundColor: Colors.white,
                    strokeWidth: 20,
                  ),
              ),
            ],
          ),
      );
    } else {
      return Expanded(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: posts.length,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(
                        height : 5,
                        child : ColoredBox(
                          color : Colors.blue.shade50,
                        )
                    ),
                itemBuilder: (BuildContext context, int index){
                  return PostDisplay(post : posts[index]);
                },
              ),
            ),
          ],
        ),
      );
    }


  }
}