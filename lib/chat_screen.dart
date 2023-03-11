import "package:flutter/material.dart";
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration.collapsed(hintText: "Send a message"),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {},
        ),
      ],
    ).px16();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ChatGPT Demo")),
      body: SafeArea(
        child: Column(children: [
          Flexible(
              child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                color: Colors.red,
              );
            },
          )),
          Container(
            decoration: BoxDecoration(color: context.cardColor),
            child: _buildTextComposer(),
          )
        ]),
      ),
    );
  }
}
