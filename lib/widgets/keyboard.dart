import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wordle_flutter/utils/constants.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({ Key? key }) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  
  isLongButton (key) {
    return key == ENTER || key == CLEAR;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.lightGreen,
      height: 150,
      child: ListView.builder(
        itemCount: kKeys.length,
        itemBuilder: (ctx, i) {
          return Container(
            // color: Colors.amber,
            height: 45,
            margin: const EdgeInsets.only(top: 5),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: kKeys[i].length,
              children: List.generate(
                kKeys[i].length, 
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  padding: const EdgeInsets.symmetric(vertical:12, horizontal: 8),
                  // height: 150,
                  decoration: BoxDecoration(
                    // color: kGrey,
                    color: Color(0xFF818384),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FittedBox(
                    child: Text(
                      kKeys[i][index].toString().toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                )
              )
            ) 
          );
        } 
      )
    );
    
  }
}