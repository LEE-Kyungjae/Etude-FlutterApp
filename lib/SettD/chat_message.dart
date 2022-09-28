import 'package:flutter/material.dart';
import 'dart:ui';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.amberAccent,
            child: (Text("N")),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",/*
                  style: TextStyle(fontStyle: FontWeight.bold),*/
                ),
                Text("message in "),
              ],
            ),
          )//
        ],
      ),
    );
  }
}