import 'dart:convert';

ChatList chatListFromJson(String str) => ChatList.fromJson(json.decode(str));

String chatListToJson(ChatList data) => json.encode(data.toJson());

class ChatList {
  ChatList({
    this.chats,
  });

  List<Chat>? chats;

  factory ChatList.fromJson(Map<String, dynamic> json) => ChatList(
        chats: List<Chat>.from(json["chats"].map((x) => Chat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "chats": List<dynamic>.from(chats!.map((x) => x.toJson())),
      };
}

class Chat {
  Chat({
    this.id,
    this.username,
    this.lastMessage,
    this.profileImage,
    this.time,
  });

  String? id;
  String? username;
  String? lastMessage;
  String? profileImage;
  String? time;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        id: json["id"],
        username: json["username"],
        lastMessage: json["last_message"],
        profileImage: json["profile_image"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "last_message": lastMessage,
        "profile_image": profileImage,
        "time": time,
      };
}
