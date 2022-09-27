import "package:flutter/material.dart";

class BookComponent extends StatelessWidget {
  const BookComponent({super.key});

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
                  color: Colors.black12,
                ),
              ))
        ],
      ),
    );
  }
}
