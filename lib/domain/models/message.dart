// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
    String id;
    String senderId;
    String message;
    String time;
    int mills;

    Message( {
        required this.id,
        required this.senderId,
        required this.message,
        required this.time,
        required this.mills,
    });

    factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["_id"],
        senderId: json["senderId"],
        message: json["message"],
        time: json["time"],
        mills: json["mills"],

    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "senderId": senderId,
        "message": message,
        "time": time,
        "mills": mills,
    };
}
