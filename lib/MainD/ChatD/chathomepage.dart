import 'package:flutter/material.dart';

//import 'package:logger/logger.dart';
import 'package:mafiaexp/MainD/ChatD/chat_message.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key});

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('chat app'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(children: const [ChatMessage(), ChatMessage()])),
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
                  style: ElevatedButton.styleFrom(
                    //foregroundColor: Colors.white,
                    elevation: 0.0,
                  ),
                  child: const Text("Send"),
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
