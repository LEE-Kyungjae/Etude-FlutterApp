import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/main_page.dart';
import '../LoginD/logind.dart';
// 로그인시 페이지이동기능
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
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                print('corrected');
                return const MainPage();
              } else if (snapshot.hasError) {
                print('failed1');
                return const Center(child: const Text('something went wrong!'));
              } else {
                print('failed2');
                return LogIn();
              }
            }));
  }
}
