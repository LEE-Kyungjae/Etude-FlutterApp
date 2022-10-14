import 'package:flutter/material.dart';
import 'package:mafiaexp/MainD/ChatD/chatpage.dart';

class chatPage extends StatelessWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
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
      ),
      SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                textStyle:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            child: Text(
              'listview',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chatpage()),
              );
            }),
      ),
    ]);
  }
}
