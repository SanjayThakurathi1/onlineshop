import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final Image img;
  ImageContainer({this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        child: img,
      ),
    );
  }
}
