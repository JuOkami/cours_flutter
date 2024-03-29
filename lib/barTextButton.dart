import 'package:flutter/material.dart';

class BarTextButton extends StatelessWidget {
  final String texte;
  final Color color;

  const BarTextButton({
    super.key,
    required this.texte,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: () {},
        child: Text(this.texte,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: this.color,
            )),
      ),
    );
  }
}