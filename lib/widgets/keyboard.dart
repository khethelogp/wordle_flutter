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
      child: GridView.count(
        crossAxisCount: kKeys.first.length,
        children: List.generate(kKeys.first.length, (i) {
          return InkWell(
            onTap: () {},
            splashColor: kSecondary,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kKeys.first[i].toString().toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ) 
    );
  }
}