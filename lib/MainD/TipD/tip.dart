import 'package:flutter/material.dart';

//audioplayers: ^1.0.1
//AudioPlayer().play(AssetSource('audio/my_audio.mp3')
Widget buildPageTip(String text) => Container(
      padding: const EdgeInsets.all(25),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '마피아 Tip',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            //사이

            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      //side: BorderSide(color: Colors.red)
                    ))),
                onPressed: () => null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.tips_and_updates),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '마피아42 데이터 Tip 확인하기',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('15개의 글이 있습니다.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Tip이슈',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      //side: BorderSide(color: Colors.red)
                    ))),
                onPressed: () => null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.tips_and_updates),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '마피아42 데이터 Tip 확인하기',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('15개의 글이 있습니다.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '유저Tip',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      //side: BorderSide(color: Colors.red)
                    ))),
                onPressed: () => null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.tips_and_updates),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '마피아42 데이터 Tip 확인하기',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('15개의 글이 있습니다.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                )),
          ]
          //Text('마피아 Tip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),
    );
