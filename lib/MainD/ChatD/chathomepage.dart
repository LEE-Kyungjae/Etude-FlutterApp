import 'package:flutter/material.dart';
//import 'package:logger/logger.dart';
import 'package:mafiaexp/MainD/ChatD/chat_message.dart';

class ChatHomePage extends StatefulWidget {
  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('chat app'),
      ),
      body: Column(
        children: [
          Expanded(child: ListView(
              children:[
                const ChatMessage(),
                const ChatMessage()
              ]
          )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(hintText: "메세지 입력"),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleSubmitted(_textEditingController.text);
                    //print(_textEditingController.text);
                    _textEditingController.clear();
                  },
                  child: const Text("Send"),
                  style: ElevatedButton.styleFrom(
                    //foregroundColor: Colors.white,
                    elevation: 0.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _handleSubmitted(String text) {
  //Logger().d(text);
  //Logger().v(text);
}

//_textEditingController.clear();