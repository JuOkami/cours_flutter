import 'package:flutter/material.dart';

class BarImageButton extends StatelessWidget {
  Image image;
  BarImageButton({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
    flex: 1,
    child: SizedBox(
      height: 40,
      child: IconButton(
        onPressed: () {},
        icon: this.image,
      ),
    ),
                      );
  }
}