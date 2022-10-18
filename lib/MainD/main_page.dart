import 'package:mafiaexp/AdMob/ad_mob_service.dart';
import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/CalcD/calc.dart';
import 'package:mafiaexp/MainD/TipD/tip.dart';
import 'package:mafiaexp/MainD/SettD/setting.dart';
import 'package:mafiaexp/MainD/ChatD/chatting.dart';
import 'RecruitD//recruit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

//메인페이지 -탭기능
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  BannerAd? _banner;

  @override
  void initState() {
    super.initState();
    _createBannerAd();
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
              title: const Text(
                '그림자정부',
                style: TextStyle(fontFamily: 'HSSantokki-Regular'),
              ),
              /*leading: IconButton(onPressed: () {

              }, icon: Icon(Icons.menu)),*/
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Color(0xffFFC23C), Color(0xffFA2FB5)],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                )),
              ),
              bottom: const TabBar(
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
                children: const [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      accountName: Text('test'),
                      accountEmail: Text('test2'))
                ],
              ),
            ),
            backgroundColor: const Color(0xffA66CFF),
            body: TabBarView(
              children: [
                const Clac(),
                buildPageTip('Tip'),
                const chatPage(),
                Recruit(),
                setting('cvgf'),
              ],
            ),
            bottomNavigationBar: _banner == null
                ? Container()
                : Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    height: 52,
                    child: AdWidget(
                      ad: _banner!,
                    ),
                  )),
      );
}
