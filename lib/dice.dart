import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdice = 2;
  int rightdice = 2;
  int resultexp = 0;
  int resultlv = 0;
  late String input1;

  late String input2;

  late String input3;
  var _isSwitch1 = false;
  var _isSwitch2 = false;
  var _isSwitch3 = false;
  var x;
  var y;
  var result;
  var letter;
  var _toggleList = <bool>[false, false, false];

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Mafia42 exp calc'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: 300.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller1,
                  decoration: InputDecoration(
                    labelText: '현재레벨',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: 300.0,
                child: TextField(
                  //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                  //autofocus: true,
                  controller: controller2,
                  decoration: InputDecoration(labelText: '목표레벨'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                    Text('경증테ㅇ'),
                    Switch(
                        value: _isSwitch1,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch1 = value;
                          });
                        }),
                  ]),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                    Text('명찰보유'),
                    Switch(
                        value: _isSwitch2,
                        onChanged: (value) {
                          setState(() {
                            _isSwitch2 = value;
                          });
                        }),
                  ]),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
              ),
              SizedBox(
                height: 60.0,
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: RaisedButton(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    color: Colors.blueAccent,
                    onPressed: () {
                      x = int.parse(controller1.text);
                      y = int.parse(controller2.text);
                      if (x < 20 || x > y) {
                        showToast("number error");
                      } else {
                        setState(() {
                          result = calc(x, y);
                          letter = lettercalc(result);
                        });
                      }
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '획득해야하는 경험치는 $result 입니다.\n'
                '일엽 $letter 장을 교환해야합니다.',
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
  return output;
}

int lettercalc(int result) {
  int letter = 0;
  int output;
  if (result % 210 == 0)
    letter = (result / 210).round();
  else {
    letter = (result / 210).round();
  }
  return letter;
}
