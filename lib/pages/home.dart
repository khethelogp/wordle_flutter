import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wordle_flutter/utils/constants.dart';
import 'package:wordle_flutter/widgets/keyboard.dart';

class HomeScreen extends StatefulWidget {
  // HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String title = 'Wordle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              // color: Colors.lightGreen,
              child: Text(
                title.toUpperCase(),
                style: const TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 5,
                ),
              ),
            ),
            Keyboard()
          ],
        )
      ),
    );
  }
}