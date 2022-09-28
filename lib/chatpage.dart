import 'package:flutter/material.dart';
import 'package:mafiaexp/chathomepage.dart';

    class chatpage extends StatelessWidget {
      const chatpage({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title:'chatapp',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home:  ChatHomePage(),
        );
      }
    }
