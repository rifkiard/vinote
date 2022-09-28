import "package:flutter/material.dart";
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vinote/constants.dart';

class NoteCreationScreen extends StatefulWidget {
  const NoteCreationScreen({super.key});

  @override
  State<NoteCreationScreen> createState() => _NoteCreationScreenState();
}

class _NoteCreationScreenState extends State<NoteCreationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black38,
        leading: IconButton(
          icon: const Icon(
            PhosphorIcons.arrowLeft,
            color: black1Color,
            size: 24,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [Row()],
        ),
      )),
    );
  }
}
