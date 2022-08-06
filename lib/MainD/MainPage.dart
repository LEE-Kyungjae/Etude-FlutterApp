import 'package:flutter/material.dart';
import 'package:mafiaexp/CalcD/Calc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xffFFC23C), Color(0xffFA2FB5)],
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
              )),
            ),
            bottom: TabBar(
                indicatorColor: Colors.black87,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    icon: Icon(Icons.calculate),
                    text: "계산기",
                  ),
                  Tab(
                    icon: Icon(Icons.tips_and_updates),
                    text: "공략",
                  ),
                  Tab(
                    icon: Icon(Icons.chat),
                    text: "채팅",
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: "프로필",
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: "설정",
                  )
                ]),
          ),
          backgroundColor: Color(0xffA66CFF),
          body: TabBarView(
            children: [
              buildPage('Home Page'),
              buildPage('adw'),
              buildPage('weqwe'),
              buildPage('sdgs'),
              buildPage('cvgf'),
            ],
          ),
        ),
      );
}
