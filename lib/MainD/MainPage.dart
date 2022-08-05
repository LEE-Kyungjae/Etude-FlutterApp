import 'package:flutter/material.dart';
import 'package:mafiaexp/ExpD/exp.dart';
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
          backgroundColor: Color(0xffA66CFF),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: [
                      MainPageButton(
                        svgimage: "assets/svg/animal/Artboard10.svg",
                          color: Color(0xff9CEFE),
                          text: Text(
                            '경험치',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          navigator: Dice()),
                    ]),
                    MainPageButton(
                      svgimage: "assets/svg/animal/Artboard11.svg",
                      color: Color(0xffAFB4FF),
                      text: Text(
                        ' 환율',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      navigator: Dice(),
                    ),
                    MainPageButton(
                        svgimage: "assets/svg/animal/Artboard19.svg",
                        color: Color(0xffB2E1FF),
                        text: Text(
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
                        color: Color(0xffFCE2DB),
                        text: Text(
                          '장착',
                          style: TextStyle(
                              color: Colors.black87, fontWeight: FontWeight.bold),
                        ),
                        navigator: Dice()),
                    MainPageButton(
                        svgimage: "assets/svg/animal/Artboard14.svg",
                        color: Color(0xffFF8FB1),
                        text: Text(
                          '주엽',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        navigator: Dice()),
                    MainPageButton(
                        svgimage: "assets/svg/animal/Artboard21.svg",
                        color: Color(0xffB270A2),
                        text: Text(
                          '활포',
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
                        svgimage: "assets/svg/animal/Artboard29.svg",
                        color: Color(0xff7A4495),
                        text: Text(
                          '카드',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        navigator: Dice()),
                    MainPageButton(
                        svgimage: "assets/svg/animal/Artboard17.svg",
                        color: Color(0xffABC9FF),
                        text: Text(
                          '경험치',
                          style: TextStyle(
                              color: Colors.black87, fontWeight: FontWeight.bold),
                        ),
                        navigator: Dice()),
                    MainPageButton(
                        svgimage: "assets/svg/animal/Artboard33.svg",
                        color: Color(0xffFFDEDE),
                        text: Text(
                          '경험치',
                          style: TextStyle(
                              color: Colors.black87, fontWeight: FontWeight.bold),
                        ),
                        navigator: Dice()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
