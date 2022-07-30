import 'package:flutter/material.dart';

import '../DiceD/dice.dart';

class MainPageButton extends StatelessWidget {
  MainPageButton(
      {required this.color, required this.text, required this.navigator});

  final Color color;
  final Widget text;
  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10,20, 10, 0),
      child: SizedBox(
        height: 80.0,
        width: 80.0,
        child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                backgroundColor: MaterialStateProperty.all<Color>(color),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(31)))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => navigator
                  )
              );
            },
            child: text),
      ),
    );
  }
}
