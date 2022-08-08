import 'package:flutter/material.dart';
import 'package:mafiaexp/CalcD/Calc.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mafiaexp/main.dart';
import 'package:mafiaexp/tip.dart';
import 'package:mafiaexp/setting.dart';
import 'package:mafiaexp/chatting.dart';

import '../profile.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;
  //late BannerAd _bannerAd;
  bool _isAdLoaded = false;
/*
  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }*/
/*
  _initBannerAd() {
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: 'ca-app-pub-3461746175008572/8127796404',
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              _isAdLoaded = true;
            });
          }, onAdFailedToLoad: (ad, error) {},

        ),
        request: AdRequest()
    );
    _bannerAd.load();
  }*/


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(
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
              buildPageCalc('Calc'),
              buildPageTip('Tip'),
              Chatting('weqwe'),
              profile('sdgs'),
              Setting('cvgf'),
            ],
          ),
          /*bottomNavigationBar:
           _isAdLoaded ? Container(
            height: _bannerAd.size.height.toDouble(),
            width: _bannerAd.size.height.toDouble(),
            child: AdWidget(ad: _bannerAd,),
          ) : SizedBox(
          ),*/
        ),
      );
}
