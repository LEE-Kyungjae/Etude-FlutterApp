//import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mafiaexp/AdMob/ad_mob_service.dart';
import 'package:mafiaexp/MainD/CalcD/Calc.dart';

//import 'package:mafiaexp/LoginD/LoginD.dart';
//import 'package:mafiaexp/main.dart';
import 'package:mafiaexp/MainD/TipD/tip.dart';
import 'package:mafiaexp/MainD/SettD/setting.dart';
import 'package:mafiaexp/MainD/ChatD/chatting.dart';
import 'RecruitD//recruit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mafiaexp/AdMob/ad_mob_service.dart';
//메인페이지 -탭기능
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //앱오프닝광고    ca-app-pub-3940256099942544/3419835294
  //배너광고        ca-app-pub-3940256099942544/6300978111
  //전면광고        ca-app-pub-3940256099942544/1033173712
  //전면동영상광고   ca-app-pub-3940256099942544/8691691433
  //보상형광고       ca-app-pub-3940256099942544/5224354917
  //보상형전면광고 	ca-app-pub-3940256099942544/5354046379

  //final String IOSTestUnitId = '';
  //final String androidTestUnitId='ca-app-pub-3940256099942544/6300978111';
  //final String iOSTestUnitId='ca-app-pub-3940256099942544/6300978111';
  BannerAd? _banner;

  @override
  void initState() {
    super.initState();
    _createBannerAd();
    // banner = BannerAd(
    //   listener: BannerAdListener(),
    //   size: AdSize.banner,
    //   adUnitId: Platform.isIOS? iOSTestUnitId : androidTestUnitId,
    //   request: AdRequest(),
    // );
  }

  void _createBannerAd() {
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobService.bannerAdUnitId!,
      listener: AdMobService.bannerListener,
      request: const AdRequest(),
    )..load();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                '그림자정부',
                style: TextStyle(fontFamily: 'HSSantokki-Regular'),
              ),
              /*leading: IconButton(onPressed: () {

              }, icon: Icon(Icons.menu)),*/
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
                      icon: Icon(Icons.groups),
                      text: "모집",
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                      text: "설정",
                    )
                  ]),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      accountName: Text('test'),
                      accountEmail: Text('test2'))
                ],
              ),
            ),
            backgroundColor: Color(0xffA66CFF),
            body: TabBarView(
              children: [
                clac(),
                buildPageTip('Tip'),
                Chatting('weqwe'),
                recruit(),
                Setting('cvgf'),
              ],
            ),
            bottomNavigationBar: _banner == null
                ? Container()
                : Container(
                    margin: EdgeInsets.only(bottom: 12),
                    height: 52,
                    child: AdWidget(
                      ad: _banner!,
                    ),
                  )),
      );
}

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
