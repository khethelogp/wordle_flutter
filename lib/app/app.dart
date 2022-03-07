import 'package:flutter/material.dart';
import 'package:wordle_flutter/app/app_colors.dart';
import 'package:wordle_flutter/wordle/worlde.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Worlde Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: blackColor),
      home: const WordleScreen(),
    );
  }
}