import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###,###');

class CardA extends StatefulWidget {
  @override
  State<CardA> createState() => _CardAState();
}

class _CardAState extends State<CardA> {
  int leftdice = 2;
  int rightdice = 2;
  int resultexp = 0;
  int resultlv = 0;
  late String input1;

  late String input2;

  late String input3;
  var k;
//  var _isSwitch1 = false; //경증테
 // var _isSwitch2 = false; //명찰보유
//  var _isSwitch3 = false; //길드버프
  var x; //현재레벨
  var y; //목표레벨
  var result; //경험치
  var letter; //엽서량
  var resultcomma = f.format(0);
  var lettercomma = f.format(0);
  var xf;
  var resulty;
  var resultlu;
  var real;
  var realstring;
  var outputkijun = "";
  var kijun = '기준환율에 정확하게 맞아떨어지지 않아\n기준환율에 제일 근접한 수치로 환율치를 변경했습니다.';
  var kijun2 = "";
  var new1;
  var a6=0;
  var a5=0;
  var a4=0;
  var a3=0;
  var b5=0;
  var b4=0;
  var b3=0;
  var b2=0;
  var new2;
  var card6 = 0;
  var card5 = 0;
  var card4 = 0;
  var card3 = 0;

  //var _toggleList = <bool>[false, false, false];

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffAFB4FF),
        title: const Text('카드 계산기'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    const Text('만들고싶은 카드수'),
                    Container(
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller1,
                        decoration: const InputDecoration(
                          labelText: '6티어',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller2,
                        decoration: const InputDecoration(labelText: '5티어'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller3,
                        decoration: const InputDecoration(
                          labelText: '4티어',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                   /* Container(
                      margin: EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller4,
                        decoration: InputDecoration(
                          labelText: '3티어',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),*/
                    const Text('현재 카드수'),
                    Container(
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller5,
                        decoration: const InputDecoration(
                          labelText: '5티어',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller6,
                        decoration: const InputDecoration(labelText: '4티어'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller7,
                        decoration: const InputDecoration(
                          labelText: '3티어',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    /*Container(
                      margin: EdgeInsets.only(left: 100.0, right: 100.0),
                      width: 300.0,
                      child: TextField(
                        //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                        //autofocus: true,
                        controller: controller8,
                        decoration: InputDecoration(
                          labelText: '2티어',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),*/
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: ElevatedButton(
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    //color: Colors.blueAccent,
                    onPressed: () {
                      if (controller1.text == null) {
                        a6 = 0;
                      } else {
                        a6 = int.parse(controller1.text);
                      }
                      if (controller2.text == null) {
                        a5 = 0;
                      } else {
                        a5 = int.parse(controller2.text);
                      }
                      if (controller3.text == null) {
                        a4 = 0;
                      } else {
                        a4 = int.parse(controller3.text);
                      }
                      if (controller4.text == null) {
                        a3 = 0;
                      } else {
                        a3 = int.parse(controller4.text);
                      }
                      if (controller5.text == null) {
                        b5 = 0;
                      } else {
                        b5 = int.parse(controller5.text);
                      }
                      if (controller6.text == null) {
                        b4 = 0;
                      } else {
                        b4 = int.parse(controller6.text);
                      }
                      if (controller7.text == null) {
                        b3 = 0;
                      } else {
                        b3 = int.parse(controller7.text);
                      }
                      if (controller8.text == null) {
                        b2 = 0;
                      } else {
                        b2 = int.parse(controller8.text);
                      }

                      /* xf = exchangeA(x, y);
                      resulty = exchangeB(xf, y);*/
                      setState(() {
                        new2 = card1(a6, a5, a4, a3, b5, b4, b3, b2);
                        for (int i = 0; new2 < 6; i++) {
                          new2-720;
                          card6 += 1;
                        }
                        /*result = calc(x, y);
                        resultcomma = f.format(resulty);
                        lettercomma = f.format(letter);
                        resultlu = f.format(getruna(y));
                        real = realex(x, y);
                        realstring = real.toStringAsFixed(3);*/
                      });
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int calc(int m, int n) {
  int i = 0;
  int output = 0;
  int z = n - m;
  int k = (m - 20) * 250 + 4000;
  for (i = 0; i < z; i++) {
    output += k;
    k += 250;
  }
  if (output == null) {
    output = 0;
  }
  return output;
}

int lettercalc(int result, bool _isSwitch1, _isSwitch2, _isSwitch3) {
  int letter = 0;
  int letterexp = 210;
  if (_isSwitch1 == true) {
    letterexp += 10;
  }
  if (_isSwitch2 == true) {
    letterexp += 10;
  }
  if (_isSwitch3 == true) {
    letterexp += 50;
  }
  if (result % letterexp == 0)
    letter = (result / letterexp).round();
  else {
    letter = (result / letterexp).round();
  }
  //letter ??= 0;
  return letter;
}

double exchangeA(int x, int y) {
  //기준환율 계산
 // int z = 0;
  double xf;
  int xi;
  xf = 1000000 / x * 100;
  xi = xf.floor();
  xf = xi / 100;
  return xf;
}

int exchangeB(double xf, int y) {
  //
  int yi;
  print("y값 $y");
  yi = (xf * y).floor();
  print("x값 $yi");
  return yi;
}

int getruna(int y) {
  //루나수수료계산
  int geruna;
  geruna = (y * 1.35).ceil();
  return geruna;
}

double realex(int x, int y) {
  //실제 1루나당 루블 가격 환율
  double realex;
  realex = (x / y);
  return realex;
}

void check() {
  //기준환율 체크
}

void real2() {}

void changeText(int b, int c, var outputkijun, var kijun, var kijun2) {
  if (b == c) {
    outputkijun = kijun2;
  } else {
    outputkijun = kijun;
  }
}

int card1(int a6, int a5, int a4, int a3, int b5, int b4, int b3, int b2) {
  int par1 = a6 * 720 + a5 * 120 + a4 * 24 + a3 * 6;
  int par2 = b5 * 120 + b4 * 24 + b3 * 6 + b2 * 3;
  print(par1);
  print(par2);
  int min = par1 - par2;
  return min;
}
