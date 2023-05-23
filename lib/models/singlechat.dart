// To parse this JSON data, do
//
//     final singlechat = singlechatFromJson(jsonString);

import 'dart:convert';

Singlechat singlechatFromJson(String str) => Singlechat.fromJson(json.decode(str));

String singlechatToJson(Singlechat data) => json.encode(data.toJson());

class Singlechat {
    bool? isSend;
    bool? isReaded;
    String? message;
    String? sendAt;

    Singlechat({
         this.isSend,
         this.isReaded,
         this.message,
         this.sendAt,
    });

    factory Singlechat.fromJson(Map<String, dynamic> json) => Singlechat(
        isSend: json["isSend"],
        isReaded: json["isReaded"],
        message: json["message"],
        sendAt: json["sendAt"],
    );

    Map<String, dynamic> toJson() => {
        "isSend": isSend,
        "isReaded": isReaded,
        "message": message,
        "sendAt": sendAt,
    };
}
