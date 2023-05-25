// To parse this JSON data, do
//
//     final callshistory = callshistoryFromJson(jsonString);

import 'dart:convert';

Callshistory callshistoryFromJson(String str) => Callshistory.fromJson(json.decode(str));

String callshistoryToJson(Callshistory data) => json.encode(data.toJson());

class Callshistory {
  String name;
    String image;
    bool isIncoming;
    bool isGroupCall;
    String calledDay;
    String calledTime;
    String calledTimes;

    Callshistory({
        required this.image,
        required this.name,
        required this.isIncoming,
        required this.isGroupCall,
        required this.calledDay,
        required this.calledTime,
        required this.calledTimes,
    });

    factory Callshistory.fromJson(Map<String, dynamic> json) => Callshistory(
        image: json["image"],
        name: json["name"],
        isIncoming: json["isIncoming"],
        isGroupCall: json["isGroupCall"],
        calledDay: json["calledDay"],
        calledTime: json["calledTime"],
        calledTimes: json["calledTimes"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "isIncoming": isIncoming,
        "isGroupCall": isGroupCall,
        "calledDay": calledDay,
        "calledTime": calledTime,
        "calledTimes": calledTimes,
    };
}
