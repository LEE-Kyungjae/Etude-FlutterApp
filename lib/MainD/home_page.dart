import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/MainPage.dart';

import '../LoginD/LoginD.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                print('waiting');
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                print('corrected');
                return MainPage();
              } else if (snapshot.hasError) {
                print('failed1');
                return Center(child: Text('something went wrong!'));
              } else {
                print('failed2');
                return MainPage();
              }
            }));
  }
}
