import 'package:flutter/material.dart';
//audioplayers: ^1.0.1
//AudioPlayer().play(AssetSource('audio/my_audio.mp3')
Widget buildPageTip(String text) => Container(
      padding: EdgeInsets.all(25),
      child: Container(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '마피아 Tip',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          //사이

          ElevatedButton(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.tips_and_updates),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '마피아42 데이터 Tip 확인하기',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    //side: BorderSide(color: Colors.red)
                  ))),
              onPressed: () => null),
          //
          // Container(
          //   padding: EdgeInsets.all(15),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(16),
          //   ),
          //   child: Row(
          //     children: [
          //       Icon(Icons.tips_and_updates),
          //       SizedBox(
          //         width: 12,
          //       ),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             '마피아42 데이터 Tip 확인하기',
          //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //           ),
          //           Text('15개의 글이 있습니다.',
          //               style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 16,
          //                   color: Colors.grey)),
          //         ],
          //       ),
          //       // ListTile(
          //       //   leading: Icon(Icons.tips_and_updates),
          //       //   title: ,
          //       //   subtitle: ,
          //       // ),
          //     ],
          //   ),
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tip이슈',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.more_horiz),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '유저Tip',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ]
            //Text('마피아 Tip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
      ),
    );
