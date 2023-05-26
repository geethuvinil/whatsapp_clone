// To parse this JSON data, do
//
//     final statusHistory = statusHistoryFromJson(jsonString);

import 'dart:convert';

StatusHistory statusHistoryFromJson(String str) => StatusHistory.fromJson(json.decode(str));

String statusHistoryToJson(StatusHistory data) => json.encode(data.toJson());

class StatusHistory {
  bool isMyStatus;
    String myStatusImage;
    String name;
    String time;
    String noOfStatus;

    StatusHistory({
      required this.isMyStatus,
        required this.myStatusImage,
        required this.name,
        required this.time,
        required this.noOfStatus,
    });

    factory StatusHistory.fromJson(Map<String, dynamic> json) => StatusHistory(
      isMyStatus: json["isMyStatus"],
        myStatusImage: json["myStatusImage"],
        name: json["name"],
        time: json["time"],
        noOfStatus: json["noOfStatus"],
    );

    Map<String, dynamic> toJson() => {
      "isMyStatus":isMyStatus,
        "myStatusImage": myStatusImage,
        "name": name,
        "time": time,
        "noOfStatus": noOfStatus,
    };
}
