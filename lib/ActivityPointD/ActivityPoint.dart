//import 'dart:ffi';
//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###,###');

class ActivityPoint extends StatefulWidget {
  @override
  State<ActivityPoint> createState() => _ActivityPointState();
}

class _ActivityPointState extends State<ActivityPoint> {
  int leftdice = 2;
  int rightdice = 2;
  int resultexp = 0;
  int resultlv = 0;
  late String input1;

  late String input2;

  late String input3;
  var k;
  var _isSwitch1 = false; //경증테
  var _isSwitch2 = false; //명찰보유
  var _isSwitch3 = false; //길드버프
  var x; //현재레벨
  var y; //목표레벨

  var z; //목표레벨
  var result; //경험치
  var letter; //엽서량
  var resultcomma;
  var lettercomma;

  //var _toggleList = <bool>[false, false, false];

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffB270A2),
        title: Text('활동포인트 계산기'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 100.0, right: 100.0),
                width: 300.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller1,
                  decoration: InputDecoration(
                    labelText: '한달엽교량',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 100.0, right: 100.0),
                width: 300.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller2,
                  decoration: InputDecoration(labelText: '주간 획초일수'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('숙련옵션43'),
                    Switch(
                        value: _isSwitch1,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch1 = value;
                          });
                        }),
                  ]),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('게임경험치증가 명패'),
                    Switch(
                        value: _isSwitch2,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch2 = value;
                          });
                        }),
                  ]),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('엽서경험치 테두리'),
                    Switch(
                        value: _isSwitch3,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch3 = value;
                          });
                        }),
                  ]),
                ],
              ),
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
                    //color: Colors.blueAccent,
                    onPressed: () {
                      x = int.parse(controller1.text);
                      y = int.parse(controller2.text);


                      if (y>7) {
                        showToast("주간 획초일수는 7일을 넘을수없습니다.");
                      } else {
                        setState(() {
                          result = calc(x, y);
                          letter = lettercalc(
                              result, _isSwitch1, _isSwitch2, _isSwitch3);
                          getexp(x, y,_isSwitch1,_isSwitch2,_isSwitch3);
                          z=f.format( activitpoint2(700000));

                          resultcomma = f.format(result);
                          lettercomma = f.format(letter);
                        });
                      }
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),
              Text(
                ' 평균 활포는 $z 입니다.',
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
void getexp(int x, int y,bool _isSwitch1, _isSwitch2, _isSwitch3){
  int y=100;
  if (_isSwitch1 == true) {
    y += 10;
  }
  if (_isSwitch2 == true) {
    y += 10;
  }

  if (_isSwitch3 == true) {
    y += 50;
  }

}
int activitpoint2(int inputexp){
  double x =(inputexp/720);//평균활포
  int y=0;//차감량
  double z;//합계
  int k=0;
  print(x);
  y = (x / 100 * 99.3598).floor();
  do {
    k=y;
    z = x + y;
    y = (z / 100 * 99.3598).floor();
    print(y);
  }while(k!=y);
  return y;
}