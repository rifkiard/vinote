import "package:flutter/material.dart";
import 'package:vinote/constants.dart';

class AppBook extends StatelessWidget {
  const AppBook({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bookCover() {
      return AspectRatio(
          aspectRatio: bookCoverSize,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: gray200Color,
              image: const DecorationImage(
                image: AssetImage("assets/images/cover.jpeg"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
          ));
    }

    return InkWell(
      child: Column(
        children: [
          bookCover(),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Idea Makers: 15 Fearless Female Entrepreneurs ss Female Entrepreneurs emale Entrepreneurs emale Entrepreneurs',
            style: blackTextStyle.copyWith(
                height: 1.5, fontSize: 14, fontWeight: FontWeight.w600),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
