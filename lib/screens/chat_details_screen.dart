import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chat_model.dart';
import 'package:whatsappclone/models/singlechat.dart';
import 'package:whatsappclone/screens/chat_bubble.dart';
import 'package:whatsappclone/widgets/utility_widget.dart';

class ChatDetailsScreen extends StatefulWidget {
  ChatDetailsScreen({super.key, required this.chatData});
  Chat chatData;

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  List<Singlechat> messageList = [
    Singlechat(
        isSend: true, isReaded: true, message: "INDIA", sendAt: "5:15 PM"),
    Singlechat(
        isSend: false, isReaded: false, message: "KERALA", sendAt: "10:10 AM"),
    Singlechat(
        isSend: true, isReaded: false, message: "Thrissur", sendAt: "3:09 AM"),
  ];
  bool showSend = false;
  bool showEmoji = false;
  TextEditingController messageController = TextEditingController();
   FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back),
            ),
            CircleAvatar(
              backgroundImage: (widget.chatData.avatar == '')
                  ? NetworkImage((!widget.chatData.isGroup!)
                      ? "https://thumbs.dreamstime.com/b/default-avatar-profile-image-vector-social-media-user-icon-potrait-182347582.jpg"
                      : "data:image/png;base64,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")
                  : NetworkImage(widget.chatData.avatar!),
            ),
          ],
        ),
        title: Column(
          children: [
            Text(
              widget.chatData.name!,
              style: TextStyle(fontSize: 22),
            ),
            Text(
              widget.chatData.status!,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        actions: [
          Icon(Icons.video_call),
          UtilityWidget().widthSpace(10),
          Icon(Icons.call),
          UtilityWidget().widthSpace(10),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("View contact")),
                PopupMenuItem(child: Text("Media,links and docs")),
                PopupMenuItem(child: Text("Search")),
                PopupMenuItem(child: Text("Mute notifications")),
                PopupMenuItem(child: Text("Disappearing messages")),
                PopupMenuItem(child: Text("Wallpaper")),
                PopupMenuItem(
                    onTap: () {
                      Container();
                    },
                    child: Row(
                      children: [
                        Text("More"),
                        UtilityWidget().widthSpace(185),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                        )
                      ],
                    )),
              ];
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "data:image/jpeg;base64,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",
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: messageList.length,
            itemBuilder: (context, index) {
              return ChatBubble(message: messageList[index]);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.teal,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        controller: messageController,
                        onChanged: (value) {
                          if (value.length > 0) {
                            setState(() {
                              showSend = true;
                            });
                          } else {
                            setState(() {
                              showSend = false;
                            });
                          }
                        },
                        onTap: () {
                          setState(() {
                            showEmoji = true;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showEmoji = !showEmoji;
                                });
                              },
                              icon: (showEmoji)
                                  ? const Icon(Icons.keyboard)
                                  : const Icon(Icons.emoji_emotions_outlined)),
                          border: InputBorder.none,
                          hintText: "type a message",
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () => showModalBottomSheet(
                                        context: context,
                                        builder: (context) => bottomMenu(),
                                      ),
                                  icon: const Icon(Icons.attach_file)),
                              const Icon(Icons.currency_rupee_rounded),
                              UtilityWidget().widthSpace(10),
                              const Icon(Icons.camera_alt),
                              UtilityWidget().widthSpace(15),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            messageList.add(Singlechat(
                                isReaded: true,
                                isSend: true,
                                message: messageController.text,
                                sendAt: "3:36 PM"));
                          });
                          messageController.clear();
                        },
                        child: (showSend)
                            ? const Icon(Icons.send)
                            : const Icon(Icons.mic_rounded),
                      ),
                    ),
                  ],
                ),
                Offstage(
                  offstage: showEmoji,
                  child: SizedBox(
                    height: 250,
                    child: EmojiPicker(
                      textEditingController: messageController,
                      onEmojiSelected: (category, emoji) {
                        setState(() {
                          showSend = true;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container bottomMenu() {
    return Container(
      width: 350,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuIcon(
                  text: "Document",
                  icon: Icon(
                    Icons.insert_drive_file,
                    color: Colors.white,
                  ),
                  color: Colors.indigo),
              menuIcon(
                  text: "Camera",
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  color: Colors.pink),
              menuIcon(
                  text: "Gallery",
                  icon: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                  color: Colors.purple)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuIcon(
                  text: "Audio",
                  icon: Icon(
                    Icons.headphones,
                    color: Colors.white,
                  ),
                  color: Colors.orange),
              menuIcon(
                  text: "Location",
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  color: Colors.green.shade800),
              menuIcon(
                  text: "Payment",
                  icon: Icon(
                    Icons.currency_rupee,
                    color: Colors.white,
                  ),
                  color: Colors.teal),
            ],
          ),
          Row(
            children: [
              UtilityWidget().widthSpace(270),
              menuIcon(
                  text: "Contact",
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  color: Colors.blue.shade800),
              UtilityWidget().widthSpace(280),
              menuIcon(
                  text: "Poll",
                  icon: Icon(
                    Icons.poll_outlined,
                    color: Colors.white,
                  ),
                  color: Colors.teal)
            ],
          )
        ],
      ),
    );
  }

  Column menuIcon(
      {required String text, required Icon icon, required Color color}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: icon,
        ),
        UtilityWidget().heightSpace(10),
        Text(text),
      ],
    );
  }
}
