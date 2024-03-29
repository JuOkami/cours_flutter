import 'package:flutter/material.dart';

class BarIconButton extends StatelessWidget {
  Icon icon;
  Color color;
  BarIconButton({
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: 40,
        child: IconButton(
          color : this.color,
          onPressed: () {},
          icon: this.icon,
        ),
      ),
    );
  }
}