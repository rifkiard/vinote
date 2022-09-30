import "package:flutter/material.dart";
import 'package:vinote/constants.dart';

class AppBookPaper extends StatelessWidget {
  final String image;
  final bool shadow;
  final PaperSizes size;

  const AppBookPaper(
      {super.key,
      required this.image,
      this.shadow = false,
      this.size = PaperSizes.a4});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: paperA4Size,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: gray200Color,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: shadow
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ]
                : [],
          ),
        ));
  }
}
