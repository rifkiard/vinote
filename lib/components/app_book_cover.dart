import "package:flutter/material.dart";
import 'package:vinote/constants.dart';

class AppBookCover extends StatelessWidget {
  final String image;

  const AppBookCover({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 5 / 8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: gray200Color,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
        ));
  }
}
