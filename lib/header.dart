import 'package:cours_flutter_provider/postProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'barTextButton.dart';

class Header extends StatelessWidget {

  void _getPosts(BuildContext context) {
    context.read<PostProvider>().getPosts();
  }

  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[300],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 40,
                child: IconButton(
                  color : Colors.white,
                  onPressed: () async {
                    await Navigator.pushNamed(context, "/new");
                  },
                  icon: Icon(Icons.create_rounded),
                ),
              ),
            ),
            const BarTextButton(texte: "Accueil", color: Colors.white),
      Expanded(
        flex: 1,
        child: SizedBox(
          height: 40,
          child: IconButton(
            color : Colors.white,
            onPressed: () => _getPosts(context),
            icon: Icon(Icons.refresh),
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}




