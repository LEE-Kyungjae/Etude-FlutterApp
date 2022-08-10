import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mafiaexp/MainD/MainPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:mafiaexp/ExpD/exp.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  var _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          '그림자정부',
          style: TextStyle(fontFamily: "HSSantokki-Regular", fontSize: 40),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1360),
                bottomRight: Radius.circular(1360))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: SizedBox(),
        ),
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Center(
                    child: SvgPicture.asset(
                        'assets/svg/fantasy/Castle.svg',
                        width: 150,
                        height: 150,
                      ),
                  ),
                  Form(
                    child: Theme(
                        data: ThemeData(
                          primaryColor: Colors.black87,
                          inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(
                                fontSize: 15.0, color: Colors.black87),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                          child: Column(
                            children: [
                              TextField(
                                //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                                //autofocus: true,
                                controller: controller,
                                decoration: InputDecoration(labelText: '아이디'),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextField(
                                controller: controller2,
                                decoration: InputDecoration(labelText: '패스워드'),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: _checkbox,
                                      onChanged: (value) {
                                        setState(() {
                                          _checkbox = value!;
                                        });
                                      }),
                                  Text('이용약관에 동의합니다'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                          ElevatedButton.icon(
                              onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black87,
                              minimumSize: Size(double.infinity, 50),
                            ),
                            label: Text('구글아이디로 로그인하기'),
                            icon: FaIcon(FontAwesomeIcons.google,color: Colors.redAccent,),
                              ),
                              
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    //color: Colors.blueAccent,
                                    //elevation: 0.0,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    onPressed: () {
                                      if (controller.text == '42' &&
                                          controller2.text == '42') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        MainPage()));
                                      } else if (controller.text == '42' &&
                                          controller2.text != '42') {
                                        showSnackBar2(context);
                                      } else if (controller.text != '42' &&
                                          controller2.text == '42') {
                                        showSnackBar3(context);
                                      } else {
                                        showSnackBar(context);
                                      }
                                    },
                                  ))
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      '로그인 정보를 다시 확인하세요',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar2(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      '비밀번호가 일치하지않습니다.',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar3(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      'dice 철자가 일치하지않습니다.',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
