import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vinote/constants.dart';
import 'package:vinote/screens/book_shelf/components/book_component.dart';

class BookShelfScreen extends StatefulWidget {
  const BookShelfScreen({super.key});

  @override
  State<BookShelfScreen> createState() => _BookShelfScreenState();
}

class _BookShelfScreenState extends State<BookShelfScreen> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          'Book Shelf',
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w600),
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
              onLongPress: () {},
              elevation: 1,
            ),
            SpeedDialChild(
              child: const Icon(PhosphorIcons.folderSimplePlus),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              label: 'New Folder',
              onTap: () {},
              onLongPress: () {},
              elevation: 1,
            ),
            SpeedDialChild(
              child: const Icon(PhosphorIcons.pencilSimple),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              label: 'New Note',
              onTap: () {},
              onLongPress: () {},
              elevation: 1,
            ),
          ]),
      body: SafeArea(
          child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      )),
    );
  }
}
