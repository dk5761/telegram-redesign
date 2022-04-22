import 'dart:convert';

ChatUser chatUserFromJson(String str) => ChatUser.fromJson(json.decode(str));

String chatUserToJson(ChatUser data) => json.encode(data.toJson());

class ChatUser {
  ChatUser({
    this.id,
    this.username,
    this.profileImage,
    this.messages,
  });

  String? id;
  String? username;
  String? profileImage;
  List<Message>? messages;

  factory ChatUser.fromJson(Map<String, dynamic> json) => ChatUser(
        id: json["id"],
        username: json["username"],
        profileImage: json["profile_image"],
        messages: List<Message>.from(
            json["messages"].map((x) => Message.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "profile_image": profileImage,
        "messages": List<dynamic>.from(messages!.map((x) => x.toJson())),
      };
}

class Message {
  Message({
    this.senderId,
    this.recieverId,
    this.messageType,
    this.message,
    this.dateTime,
  });

  String? senderId;
  String? recieverId;
  String? messageType;
  String? message;
  String? dateTime;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        senderId: json["sender_id"],
        recieverId: json["reciever_id"],
        messageType: json["message_type"],
        message: json["message"],
        dateTime: json["date_time"],
      );

  Map<String, dynamic> toJson() => {
        "sender_id": senderId,
        "reciever_id": recieverId,
        "message_type": messageType,
        "message": message,
        "date_time": dateTime,
      };
}
