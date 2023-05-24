import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/calls_screen.dart';
import 'package:whatsappclone/screens/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> 
with SingleTickerProviderStateMixin {
 late TabController _controller;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync:this ,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
        SizedBox(
          width: 10,
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
         SizedBox(
          width: 10,
        ),
        PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),

            ];
          }, )
        ],
        bottom:TabBar(tabs: [
          Tab(
          icon: Icon(Icons.camera_alt),
          ),
           Tab(
            text: "Chats",
          ),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          ),
        ],
        controller: _controller,
        ),
      
        title: Text("Whatsapp"),
      ),body: TabBarView(children: [
        Text("Camera"),
      ChatPage(),
        Text("Status"),
CallsScreen()
      ],
      controller: _controller,
      ),
    );
  }
}