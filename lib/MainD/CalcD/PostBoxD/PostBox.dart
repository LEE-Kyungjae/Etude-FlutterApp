//import 'dart:ffi';
//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###,###');

class PostBox extends StatefulWidget {
  @override
  State<PostBox> createState() => _PostBoxState();
}

class _PostBoxState extends State<PostBox> {
  int leftdice = 2;
  int rightdice = 2;
  int resultexp = 0;
  int resultlv = 0;
  late String input1;

  late String input2;

  late String input3;
  var k;
//  var _isSwitch1 = false; //경증테
//  var _isSwitch2 = false; //명찰보유
 // var _isSwitch3 = false; //길드버프
  var x; //현재레벨
  var y; //목표레벨
  var z;
  var result; //경험치
  var letter; //엽서량

  var resultcomma = f.format(0);
  var lettercomma = f.format(0);
  var ioswon= f.format(0);
  var androidwon= f.format(0);
  late int ios1;
  var android1;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffB2E1FF),
        title: Text('우체통 계산기',style: TextStyle(color: Colors.black87),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: 200.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller1,
                  decoration: InputDecoration(
                    labelText: '현재 우편함',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: 200.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller2,
                  decoration: InputDecoration(labelText: '목표 우편함'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: 200.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller3,
                  decoration: InputDecoration(labelText: '루나환율'),
                  keyboardType: TextInputType.number,
                ),
              ),
              /*Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('경험치테두리'),
                    Switch(
                        value: _isSwitch1,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch1 = value;
                          });
                        }),
                  ]),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('명찰교환'),
                    Switch(
                        value: _isSwitch2,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch2 = value;
                          });
                        }),
                  ]),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('길드버프'),
                    Switch(
                        value: _isSwitch3,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch3 = value;
                          });
                        }),
                  ]),
                ],
              ),*/
              SizedBox(
                height: 60.0,
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: ElevatedButton(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                   // color: Colors.blueAccent,
                    onPressed: () {
                      x = int.parse(controller1.text);
                      y = int.parse(controller2.text);
                      z = int.parse(controller3.text);
                      if (x < 42 || x > y) {
                        showToast("number error");
                      } else {
                        setState(() {
                          result = calc(x, y);
                          letter = lunacalc(result, z);
                          resultcomma = f.format(result);
                          lettercomma = f.format(letter);
                          ios1=letter.round();
                          android1=letter.round();

                          ioswon=f.format(ios(ios1));
                          androidwon=f.format(android(android1));

                          print(ios1);
                        });
                      }
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '$resultcomma 루블이 필요합니다.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),
              Text(
                '루블 구매시 약 $lettercomma 루나가 필요합니다.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),
              Text(
                '아이폰 약 $ioswon원',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),
              Text(
                '안드로이드 약 $androidwon 원',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.blueGrey,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}

int calc(int m, int n) {
//  int now;
//  int mok;
  int i = 0;
  int stack = ((n - m) ~/ 10); //업그레이드 해야할 횟수
  int luble = (m - 42) * 1000;
  int output = 0;

  for (i = 0; i < stack + 1; i++) {
    output += luble;
    luble += 10000;
  }
  return output;
}

double lunacalc(int result, int z) {
  var buyluna;
// var luna;
  int luble;
  int han;
  luble = result;
  han = z;
  buyluna = (luble * han / 1000000) * 1.35;
  return buyluna;
}

int ios(int letter) {
  int won = (letter/4242*79000).round();

  return won;
}

int android(int letter) {
  int won = (letter/4242*75000).round();
  return won;
}
