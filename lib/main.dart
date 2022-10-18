import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mafiaexp/MainD/home_page.dart';
import 'package:mafiaexp/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

Future main() async{
  //스플래시 스크린때 데이터받기
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context)=>GoogleSignInProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shadowgovernment',
        home: HomePage(),
      ),
    );
  }
  Future<bool> fetchData()async{
  bool data=false;
  await Future.delayed(const Duration(seconds: 1),(){
    data = true;
  });
  return data;
  }