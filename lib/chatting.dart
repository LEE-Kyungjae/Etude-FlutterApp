import 'package:flutter/material.dart';
import 'package:mafiaexp/chatpage.dart';

Widget Chatting(String text) => Center(
      child: Builder(
        builder: (context) {
          return SizedBox(
            width: 170,
            height: 70,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.amberAccent,
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                child: Text(
                  '채팅방 입장',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chatpage()),
                  );
                }),
          );
        }
      ),
    );
