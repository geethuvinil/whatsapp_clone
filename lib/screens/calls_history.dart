import 'package:flutter/material.dart';
import 'package:whatsappclone/models/calls_history.dart';

class CallsHistoryScreen extends StatelessWidget {
   CallsHistoryScreen({super.key,required this.callHistoryDetails});

Callshistory callHistoryDetails;
  @override
  Widget build(BuildContext context) {
    return ListTile(
leading: CircleAvatar(
  backgroundImage: NetworkImage(callHistoryDetails.image),
),
    );
  }
}