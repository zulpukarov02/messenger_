import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static Stream<QuerySnapshot> getChats() {
    return FirebaseFirestore.instance.collection('chats').snapshots();
  }

  static Stream<QuerySnapshot> getMessages(String chatId) {
    return FirebaseFirestore.instance
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

  static Future<void> sendMessage(String chatId, String text) {
    return FirebaseFirestore.instance
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .add({
      'text': text,
      'createdAt': Timestamp.now(),
    });
  }
}
