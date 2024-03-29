import 'package:cours_flutter_provider/postProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });



  @override
  Widget build(BuildContext context) {

    String accountName = context.read<PostProvider>().accountName;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left : 10),
          child: Text("T'8h",
            style : TextStyle(
              color: Colors.white
            ),
            textAlign: TextAlign.left,),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right : 10),
            child: Text(accountName,
              style : TextStyle(
                  fontStyle: FontStyle.italic,
                  color : Colors.white),
              textAlign: TextAlign.right,),
          ),
        ),
      ],
    );
  }
}