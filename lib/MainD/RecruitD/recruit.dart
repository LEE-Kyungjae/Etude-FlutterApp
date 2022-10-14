// import 'package:flutter/material.dart';
//
// Widget profile(String text) => Center(
//   child: Column(
//
//   ),
// );

import 'package:flutter/material.dart';

class recruit extends StatelessWidget {
  final String title = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA66CFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('카드교환',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Text('획초방 일정',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),

            Text('획초방 일정',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Text('길드원모집공고',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
//카드교환모집 획초모집 엽서교환모집 길드모집
    );
  }
}
