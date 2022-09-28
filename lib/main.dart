import 'package:flutter/material.dart';
import 'package:vinote/constants.dart';
import 'package:vinote/screens/bookshelf/bookshelf_screen.dart';
import 'package:vinote/screens/note_creation/note_creation_screen.dart';
import 'package:vinote/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: backgroundColor,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: primaryColor)),
      routes: {
        'splash': (context) => const SplashScreen(),
        'bookshelf': (context) => const BookshelfScreen(),
        'note-creation': (context) => const NoteCreationScreen(),
      },
    );
  }
}
