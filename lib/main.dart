import 'package:flutter/material.dart';
import 'package:vinote/constants.dart';
import 'package:vinote/screens/book_shelf/book_shelf_screen.dart';
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
      initialRoute: 'splash.index',
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: backgroundColor,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: primaryColor)),
      routes: {
        'splash.index': (context) => const SplashScreen(),
        'book-shelf.index': (context) => const BookShelfScreen(),
      },
    );
  }
}
