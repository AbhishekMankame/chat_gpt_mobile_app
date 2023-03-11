import "package:flutter/material.dart";
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget _buildTextComposer() {
    return Row(
      children: const [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ChatGPT Demo")),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: context.cardColor),
          child: _buildTextComposer(),
        )
      ]),
    );
  }
}
