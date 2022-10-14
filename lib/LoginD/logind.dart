import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mafiaexp/MainD/main_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mafiaexp/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:mafiaexp/LoginD/Terms.dart';
import 'package:mafiaexp/LoginD/policy.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  //var _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          '그림자정부',
          style: TextStyle(fontFamily: "HSSantokki-Regular", fontSize: 40),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1360),
                bottomRight: Radius.circular(1360))),
        bottom: const PreferredSize(
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
                  const Padding(padding: EdgeInsets.only(top: 10)),
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
                          inputDecorationTheme: const InputDecorationTheme(
                            labelStyle: TextStyle(
                                fontSize: 15.0, color: Colors.black87),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                          child: Column(
                            children: [
                              TextField(
                                //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                                //autofocus: true,
                                controller: controller,
                                decoration:
                                    const InputDecoration(labelText: '아이디'),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextField(
                                controller: controller2,
                                decoration:
                                    const InputDecoration(labelText: '패스워드'),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              /* Row(
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
                              ),*/
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    //color: Colors.blueAccent,
                                    //elevation: 0.0,
                                    child: const Icon(
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
                                                        const MainPage()));
                                      } else if (controller.text == '42' &&
                                          controller2.text != '42') {
                                        scaffoldMessenger(context);
                                      } else if (controller.text != '42' &&
                                          controller2.text == '42') {
                                        scaffoldMessenger(context);
                                      } else {
                                        scaffoldMessenger(context);
                                      }
                                    },
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text("OR"),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) => Dialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            backgroundColor:
                                                const Color(0xffB1E1FF),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        10, 10, 10, 10),
                                                    child: const Text(
                                                      '이용약관',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    )),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          40, 10, 40, 10),
                                                  child: const Text(
                                                      '본 어플을 사용하는 모든 이용자는 "그림자정부"의 이용약관 및 개인정보처리방침에 동의합니다.'),
                                                ),

                                                /*
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 10, 0),*/
                                                Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 40,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          /*Checkbox(
                                                                value: _checkbox,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _checkbox = value!;
                                                                  });
                                                                }),*/
                                                          const Text(
                                                              '그림자정부 이용약관'),
                                                          TextButton(
                                                            onPressed: () {
                                                              {
                                                                build3(context);
                                                              }
                                                            },
                                                            child: const Text(
                                                                "자세히보기"),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          10, 0, 10, 0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const Text(
                                                              '그림자정부 개인정보 처리방침'),
                                                          TextButton(
                                                            onPressed: () {
                                                              build2(context);
                                                            },
                                                            child: const Text(
                                                                "자세히보기"),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 0, 10, 0),
                                                  child: SizedBox(
                                                    width: 250,
                                                    height: 50,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {
                                                        final provider = Provider
                                                            .of<GoogleSignInProvider>(
                                                                context,
                                                                listen: false);
                                                        provider.googleLogin();
                                                        Navigator.pop(context);
                                                      },
                                                      label:
                                                          const Text('동의합니다.'),
                                                      icon: const FaIcon(
                                                        FontAwesomeIcons.google,
                                                        color: Colors.redAccent,
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        foregroundColor:
                                                            Colors.black,
                                                        backgroundColor:
                                                            Colors.white,
                                                        minimumSize: const Size(
                                                            double.infinity,
                                                            50),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 10, 10, 20),
                                                  child: SizedBox(
                                                    width: 250,
                                                    height: 50,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        foregroundColor:
                                                            Colors.black,
                                                        backgroundColor:
                                                            Colors.white,
                                                        minimumSize: const Size(
                                                            double.infinity,
                                                            50),
                                                      ),
                                                      child: const Text(
                                                          '동의하지않습니다'),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ));

                                  /* final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                                provider.googleLogin();*/
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  minimumSize: const Size(double.infinity, 50),
                                ),
                                label: const Text('구글아이디로 로그인하기'),
                                icon: const FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.redAccent,
                                ),
                              ),
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

void scaffoldMessenger(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Incremented"),
      duration: Duration(milliseconds: 300),
    ),
  );
}
//
// void showSnackBar(BuildContext context) {
//   Scaffold.of(context).showSnackBar(SnackBar(
//     content: Text(
//       '로그인 정보를 다시 확인하세요',
//       textAlign: TextAlign.center,
//     ),
//     duration: Duration(seconds: 2),
//     backgroundColor: Colors.blue,
//   ));
// }
//
// void showSnackBar2(BuildContext context) {
//   Scaffold.of(context).showSnackBar(SnackBar(
//     content: Text(
//       '비밀번호가 일치하지않습니다.',
//       textAlign: TextAlign.center,
//     ),
//     duration: Duration(seconds: 2),
//     backgroundColor: Colors.blue,
//   ));
// }
//
// void showSnackBar3(BuildContext context) {
//   Scaffold.of(context).showSnackBar(SnackBar(
//     content: Text(
//       'dice 철자가 일치하지않습니다.',
//       textAlign: TextAlign.center,
//     ),
//     duration: Duration(seconds: 2),
//     backgroundColor: Colors.blue,
//   ));
// }
