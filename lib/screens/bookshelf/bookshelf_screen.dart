import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vinote/components/app_note_creation_dialog.dart';
import 'package:vinote/constants.dart';
import 'package:vinote/screens/bookshelf/components/app_book.dart';

class BookshelfScreen extends StatefulWidget {
  const BookshelfScreen({super.key});

  @override
  State<BookshelfScreen> createState() => _BookshelfScreenState();
}

class _BookshelfScreenState extends State<BookshelfScreen> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Bookshelf',
          style: whiteTextStyle.copyWith(fontWeight: FontWeight.w600),
        ),
        elevation: 1,
        shadowColor: Colors.black38,
      ),
      floatingActionButton: SpeedDial(
          openCloseDial: isDialOpen,
          icon: PhosphorIcons.plus,
          activeIcon: PhosphorIcons.x,
          overlayColor: blackColor,
          overlayOpacity: 0.2,
          spaceBetweenChildren: 4,
          spacing: 8,
          children: [
            SpeedDialChild(
              child: const Icon(PhosphorIcons.fileArrowDown),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              label: 'Import PDF',
              onTap: () {},
              elevation: 1,
            ),
            SpeedDialChild(
              child: const Icon(PhosphorIcons.folderSimplePlus),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              label: 'New Folder',
              onTap: () {},
              elevation: 1,
            ),
            SpeedDialChild(
              child: const Icon(PhosphorIcons.pencilSimple),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              label: 'New Note',
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) =>
                      const AppNoteCreationDialog(),
                );
              },
              elevation: 1,
            ),
          ]),
      body: SafeArea(
          child: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: defaultSpace, vertical: 31),
        childAspectRatio: 4.7 / 10,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 6,
        children: [
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
          AppBook(),
        ],
      )),
    );
  }
}
