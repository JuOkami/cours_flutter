import 'package:flutter/material.dart';

import 'barIconButton.dart';
import 'barTextButton.dart';
import 'model/post.dart';

class PostDisplay extends StatelessWidget {

  final Post post;

  const PostDisplay({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(children: [
        Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left : 10),
                      child: Text(this.post.author,
                        style : TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.left,),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right : 10),
                        child: Text(this.post.category,
                          style : TextStyle(fontStyle: FontStyle.italic),
                          textAlign: TextAlign.right,),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(this.post.message,
                    textAlign: TextAlign.left,),
                ),
              ],
            ),
          ),
        ]),
        Row(children: [
          BarIconButton(icon : Icon(Icons.reply), color : Colors.grey.shade800),
          BarIconButton(icon : Icon(Icons.repeat), color : Colors.grey.shade800),
          BarIconButton(icon : Icon(Icons.star), color : Colors.grey.shade800),
        ])
      ]),
    );
  }
}