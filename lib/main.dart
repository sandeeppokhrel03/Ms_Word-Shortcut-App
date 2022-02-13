import 'package:flutter/material.dart';
import 'package:ms_word_app/Screen/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MS-Word Shortcuts Guide',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
