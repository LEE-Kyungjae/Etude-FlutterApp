import 'package:flutter/material.dart';
import 'package:mafiaexp/DiceD/dice.dart';
import 'package:mafiaexp/MainD/MainButton.dart';
import '../PostBoxD/PostBox.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dice game',
        home: Scaffold(
          backgroundColor: Colors.indigoAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Column(
                          children:[ MainPageButton(
                              color: Colors.red,
                              text: Text(
                                '경험치',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              navigator: Dice()
                          ),
                    ]
                ),
                MainPageButton(
                  color: Colors.red,
                  text: Text(
                    ' 환율',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  navigator: Dice(),
                ),
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '우체통',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: PostBox()),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '경험치\n측정기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '경험치\n측정기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '경험치\n측정기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '경험치\n측정기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '경험치\n측정기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
                MainPageButton(
                    color: Colors.red,
                    text: Text(
                      '경험치\n측정기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
              ],
            ),
            ],
          ),
        ),
      ),
    ),);
  }
}
