import "package:flutter/material.dart";
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vinote/components/app_book_cover.dart';
import 'package:vinote/constants.dart';

class AppNoteCreationDialog extends StatelessWidget {
  const AppNoteCreationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appearance() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('note-creation');
              },
              child: Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: AppBookCover(image: 'assets/images/cover.jpeg'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Cover",
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: 150,
                  child: AppBookCover(image: 'assets/images/cover-2.jpeg'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Paper",
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 16),
                )
              ],
            )
          ],
        ),
      );
    }

    return AlertDialog(
      title: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(PhosphorIcons.x)),
          SizedBox(
            width: 12,
          ),
          Text(
            "New Note",
            style: blackTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
      content: Column(
        children: [appearance()],
      ),
    );
  }
}
