import "package:flutter/material.dart";
import 'package:vinote/components/app_book_cover.dart';
import 'package:vinote/constants.dart';

class AppBook extends StatelessWidget {
  const AppBook({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          const AppBookCover(image: 'assets/images/cover-2.jpeg'),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Idea Makers: 15 Fearless Female Entrepreneurs ss Female Entrepreneurs emale Entrepreneurs emale Entrepreneurs',
            style: blackTextStyle.copyWith(
                height: 1.5, fontSize: 16, fontWeight: FontWeight.w600),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
