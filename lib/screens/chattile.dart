import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsappclone/models/chat_model.dart';
import 'package:whatsappclone/screens/chat_details_screen.dart';
import 'package:whatsappclone/widgets/utility_widget.dart';

class ChatTile extends StatelessWidget {
   ChatTile({Key? key,required this.chatData}) : super(key: key);
  Chat chatData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetailsScreen(chatData: chatData),))),
      title: Text(chatData.name!),
      leading: CircleAvatar(
        backgroundImage:(chatData.avatar == '')? NetworkImage((!chatData.isGroup!) ? 
        "https://thumbs.dreamstime.com/b/default-avatar-profile-image-vector-social-media-user-icon-potrait-182347582.jpg" 
        : "data:image/png;base64,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")
        : NetworkImage(chatData.avatar!),
      ),
      subtitle: Text(chatData.message!),
      trailing: Column(
        children: [
          Text(chatData.updatedAt!),
          chatData.unread! == "0"?
       SizedBox():
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green.shade500),
            child: Center(child: Text(chatData.unread!)),
          )
        ],
      ),
    );
  }
}