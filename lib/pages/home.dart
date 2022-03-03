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
  final NUMBER_OF_TRIES = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF121214),
      backgroundColor: kcBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
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
            Container(
              height: 400,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.count(
                crossAxisCount: 6,
                children: List.generate(
                  NUMBER_OF_TRIES * 6, 
                  (index) => Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF3A3A3D),
                        width: 2
                      )
                    ),
                    child: const Center(
                      child: Text('H', style: TextStyle(color: Colors.white),),
                    ),
                  )
                )
              ),
            ),
            const Keyboard(),
          ],
        )
      ),
    );
  }
}