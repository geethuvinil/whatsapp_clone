import 'package:flutter/material.dart';
import 'package:whatsappclone/models/status_model.dart';
import 'package:whatsappclone/widgets/utility_widget.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<StatusHistory> statusDetails = [
    StatusHistory(
        isMyStatus: false,
        myStatusImage:
            "data:image/jpeg;base64,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",
        name: "Manu",
        time: "51 minutes ago",
        noOfStatus: ""),
    StatusHistory(
        isMyStatus: false,
        myStatusImage:
            "data:image/jpeg;base64,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",
        name: "Sariga",
        time: "Yesterday,8:52 AM",
        noOfStatus: "0"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu2VjsWvxQXn2MbAGmhP7cv7MOTksT-mAy9w&usqp=CAU"),
              ),
            ),
            Positioned(
                right: 8,
                bottom: 5,
                child: Icon(
                  Icons.add_circle,
                  color: Colors.teal,
                  size: 25,
                ))
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My status",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            Text(
              "Tap to add status update",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Recent updates",
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: statusDetails.length,
              itemBuilder: (context, index) {
                return statusTile(statusDetails, context, index);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Viewed updates",
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: statusDetails.length,
                itemBuilder: (context, index) {
                  return statusTile(statusDetails, context, index);
                })
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: Icon(Icons.edit),
          ),
          UtilityWidget().heightSpace(20),
          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }

  statusTile(List<StatusHistory> statusData, BuildContext context, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(statusData[index].myStatusImage),
      ),
      title: Text(
        statusDetails[index].name,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Text(
        statusDetails[index].time,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
