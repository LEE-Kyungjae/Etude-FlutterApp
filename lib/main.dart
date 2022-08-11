import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mafiaexp/LoginD/LoginD.dart';
import 'package:mafiaexp/MainD/home_page.dart';
import 'package:mafiaexp/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context)=>GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shadowgovernment',
        home: HomePage(),
      ),
    );
  }