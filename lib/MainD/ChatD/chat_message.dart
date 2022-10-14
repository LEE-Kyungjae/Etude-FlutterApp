import 'package:flutter/material.dart';
//import 'dart:ui';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.amberAccent,
            child: (Text("N")),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",/*
                  style: TextStyle(fontStyle: FontWeight.bold),*/
                ),
                const Text("message in "),
              ],
            ),
          )//
        ],
      ),
    );
  }
}