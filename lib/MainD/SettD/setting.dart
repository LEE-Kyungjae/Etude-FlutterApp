import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/SettD/logoutD/logout.dart';
Widget setting(String text) => Builder(builder: (context) {
      return Scaffold(
          body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 50,
            color: Colors.amber,
            child: ElevatedButton(
              onPressed: () {
              },
              child: const Text('계정'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.redAccent,
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.purple,
          ),
          Container(
            height: 50,
            color: Colors.orangeAccent,
          ),
          Container(
            height: 50,
            color: Colors.greenAccent,
            child: ElevatedButton(
              onPressed: () {
                logout(context);
              },
              child: const Text('로그아웃'),
            ),
          ),
        ],
      ));
    });
