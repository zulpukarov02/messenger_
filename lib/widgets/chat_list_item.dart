import 'package:flutter/material.dart';
import '../screens/chat_screen.dart';

class ChatListItem extends StatelessWidget {
  final String chatName;
  final String chatId;

  ChatListItem(this.chatName, this.chatId);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(chatName),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ChatScreen(chatId, chatName),
          ),
        );
      },
    );
  }
}
