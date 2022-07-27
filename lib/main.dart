import 'package:flutter/material.dart';
import 'package:mafiaexp/dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}
class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
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
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.black87,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('assets/unnamed.jpg'),
                      ),
                    )
                  ),
                  Form(
                    child: Theme(
                        data: ThemeData(
                          primaryColor: Colors.black87,
                          inputDecorationTheme: InputDecorationTheme(
                            labelStyle:
                                TextStyle(fontSize: 15.0, color: Colors.black87),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              TextField(
                                //시작하자마자 이메일에 키보드뜨는거 ->오토포커스
                                //autofocus: true,
                                controller: controller,
                                decoration:
                                    InputDecoration(labelText: 'Enter dice'),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextField(
                                controller: controller2,
                                decoration: InputDecoration(
                                    labelText: 'Enter Password'),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    color: Colors.blueAccent,
                                    elevation: 0.0,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    onPressed: () {
                                      if (controller.text == 'mafia' &&
                                          controller2.text == '42') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Dice()));
                                      } else if (controller.text == 'mafia' &&
                                          controller2.text != '42') {
                                        showSnackBar2(context);
                                      } else if (controller.text != 'mafia' &&
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
