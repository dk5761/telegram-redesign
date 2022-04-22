import 'package:flutter/cupertino.dart';
import 'package:telegram_redesign/models/chat.dart';

import '../resources/data.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> _messages = [];

  final List<ChatUser> _chatUsers = [ChatUser.fromJson(userData)];

  List<Message> get messages => [..._messages];

  Future getChats(String id) async {
    // print(id);
    // final chat = _chatUsers.firstWhere((x) => x.id == id);
    _messages.addAll([..._chatUsers[0].messages!]);
    return null;
  }
}
