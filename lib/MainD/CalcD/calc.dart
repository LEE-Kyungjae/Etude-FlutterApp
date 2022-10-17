import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/CalcD/ExpD/exp.dart';
import 'package:mafiaexp/MainD/main_button.dart';
import 'package:mafiaexp/MainD/CalcD/PostBoxD/PostBox.dart';
import 'package:mafiaexp/MainD/CalcD/ActivityPointD/ActivityPoint.dart';
import 'package:mafiaexp/MainD/CalcD/ExchangeD/Exchange.dart';
import 'package:mafiaexp/MainD/CalcD/CardD/Card.dart';

class Clac extends StatelessWidget {
  const Clac({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(opacity: 0,
                child:  Container(
                ),
                ),

            Container(
              //this.alignment,
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: const Text('토큰 3개'),
              //this.color,
              //this.decoration,
              //this.foregroundDecoration,
            ),
          ]),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                MainPageButton(
                    svgimage: "assets/svg/animal/Artboard10.svg",
                    color: const Color(0x0ff9cefe),
                    text: const Text(
                      '경험치',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    navigator: Dice()),
              ]),
              MainPageButton(
                svgimage: "assets/svg/animal/Artboard11.svg",
                color: const Color(0xffAFB4FF),
                text: const Text(
                  ' 환율',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                navigator: Exchange(),
              ),
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard19.svg",
                  color: const Color(0xffB2E1FF),
                  text: const Text(
                    '우체통',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  navigator: PostBox()),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard24.svg",
                  color: const Color(0xffFCE2DB),
                  text: const Text(
                    '장착',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  navigator: Dice()),
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard14.svg",
                  color: const Color(0xffFF8FB1),
                  text: const Text(
                    '주엽',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  navigator: Dice()),
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard21.svg",
                  color: const Color(0xffB270A2),
                  text: const Text(
                    '활포',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  navigator: ActivityPoint()),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard29.svg",
                  color: const Color(0xff7A4495),
                  text: const Text(
                    '카드',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  navigator: CardA()),
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard17.svg",
                  color: const Color(0xffABC9FF),
                  text: const Text(
                    '경험치',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  navigator: Dice()),
              MainPageButton(
                  svgimage: "assets/svg/animal/Artboard33.svg",
                  color: const Color(0xffFFDEDE),
                  text: const Text(
                    '경험치',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  navigator: Dice()),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

//Widget buildPageCalc(String text) =>
