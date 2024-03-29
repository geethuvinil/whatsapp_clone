import 'dart:convert';

Chat chatFromJson(String str) => Chat.fromJson(json.decode(str));

String chatToJson(Chat data) => json.encode(data.toJson());

class Chat {
    String? avatar;
    String? name;
    bool? isGroup;
    String? updatedAt;
    String? message;
    String? status;
    String? unread;
    bool? isBackgroundImage;

    Chat({
         this.avatar,
         this.name,
         this.isGroup,
         this.updatedAt,
         this.message,
         this.status,
         this.unread,
         this.isBackgroundImage,
    });

    factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        avatar: json["avatar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updatedAt: json["updatedAt"],
        message: json["message"],
        status: json['status'],
        unread: json['unread'],
        isBackgroundImage:json["isBackgroundImage"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isGroup": isGroup,
        "updatedAt": updatedAt,
        "message": message,
        'status':status,
        "unread":unread,
        "isBackgroundImage":isBackgroundImage,
    };
}
