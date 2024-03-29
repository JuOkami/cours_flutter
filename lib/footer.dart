import 'package:flutter/material.dart';

import 'barTextButton.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> listeDown = ["Fil", "Notifications", "Message", "Moi"]
        .map((e) => BarTextButton(texte: e, color: Colors.grey))
        .toList();

    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: listeDown,
        ),
      ),
    );
  }
}