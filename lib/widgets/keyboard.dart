import 'package:flutter/material.dart';
import 'package:wordle_flutter/utils/constants.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({ Key? key }) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.lightBlue,
      child: Column(
        children: kKeys.map((keyRow) => Text('hi')).toList()
          // ListView.builder(
          //   itemCount: kKeys.length,
          //   itemBuilder: (ctx, index) {
          //     return Text(kKeys[index].first);
          //   } 
          // )
        
      ) 
    );
  }
}