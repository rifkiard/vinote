import "package:flutter/material.dart";
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vinote/components/app_input.dart';
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
        title: Text(
          'New Note',
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: defaultSpace),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: AppInput(
                          hintText: "Title",
                        )),
                    SizedBox(
                      width: 21,
                    ),
                    Expanded(flex: 2, child: Text("hallo"))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
