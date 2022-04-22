import 'package:flutter/material.dart';
import 'package:telegram_redesign/models/chat_list.dart';

class ChatListProvider extends ChangeNotifier {
  List<Chat> _chats = [];

  int get length => _chats.length;

  List get chatList {
    return [..._chats];
  }

  Future populateChatList(dynamic data) async {
    // to display a future call
    await Future.delayed(Duration.zero, () {
      final chat = ChatList.fromJson(data);
      _chats.addAll(chat.chats!);
      notifyListeners();
      print("iside redur $_chats");
    });

    return null;
  }
}
