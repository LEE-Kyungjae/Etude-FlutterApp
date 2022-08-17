import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###,###');

class Exchange extends StatefulWidget {
  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
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
  var result; //경험치
  var letter; //엽서량
  var resultcomma = f.format(0);
  var lettercomma = f.format(0);
  var xf ;
  var resulty ;
  var resultlu;
  var real;
  var realstring;

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
        backgroundColor: Color(0xffAFB4FF),
        title: Text('환율 계산기'),
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
                    labelText: '판매루블',
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
                  decoration: InputDecoration(labelText: '가격루나'),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                  '표시상 환율 $resulty'
              ),
              Text(
                  '실제 환율 $realstring'
              ),
              Text(
                  '판매가격 $resultlu 루나'
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
                      xf=exchangeA(x, y);
                      resulty=exchangeB(xf,y);
                        setState(() {
                          result = calc(x, y);
                          letter = lettercalc(
                              result, _isSwitch1, _isSwitch2, _isSwitch3);
                          resultcomma = f.format(resulty);
                          lettercomma = f.format(letter);
                          resultlu = f.format(getruna(y));
                          real=realex(x, y);
                          realstring=real.toStringAsFixed(3);
                        });
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              /*Text(
                '획득해야하는 경험치는 $resultcomma 입니다.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),*/
              /*Text(
                '일엽 $lettercomma 장을 교환해야합니다.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),*/
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

double exchangeA(int x, int y){
  int z=0;
  double xf;
  int xi;
  xf=1000000/x*100;
  xi=xf.floor();
  xf=xi/100;
  return xf;
}
int exchangeB(double xf, int y){
  int yi;
  print("y값 $y");
  yi=(xf*y).floor();
  print("x값 $yi");
  return yi;
}

int getruna(int y){
  int geruna;
  geruna=(y*1.35).ceil();
  return geruna;
}

double realex(int x,int y){
  double realex;
  realex=(x/y);
  return realex;
}







