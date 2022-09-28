import "package:flutter/material.dart";
import 'package:vinote/constants.dart';

class AppBook extends StatelessWidget {
  const AppBook({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 5 / 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage("assets/images/cover.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              )),
          SizedBox(
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
