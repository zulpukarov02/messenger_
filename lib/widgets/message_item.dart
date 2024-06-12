import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  final String message;
  final Timestamp createdAt;

  MessageItem(this.message, this.createdAt);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(message),
      subtitle: Text(createdAt.toDate().toString()),
    );
  }
}
