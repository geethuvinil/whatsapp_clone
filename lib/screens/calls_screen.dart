import 'package:flutter/material.dart';
import 'package:whatsappclone/models/calls_history.dart';
import 'package:whatsappclone/widgets/utility_widget.dart';

class CallsScreen extends StatelessWidget {
   CallsScreen ({super.key});
    List<Callshistory> callHistory = [
    Callshistory(
      name: "CS Buddies",
        image: "",
        isIncoming: true,
        isGroupCall: true,
        calledDay: "Yesterday",
        calledTime: "9:14 AM",
        calledTimes: "2"),
    Callshistory(
      name: "GUYSS",
        image:
            "'data:image/jpeg;base64,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",
        isIncoming: true,
        isGroupCall: true,
        calledDay: "Today",
        calledTime: "1:45 AM",
        calledTimes: "14"),
    Callshistory(
      name: "Stella",
        image:
            "data:image/jpeg;base64,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",
        isIncoming: false,
        isGroupCall: false,
        calledDay: "19/01/2023",
        calledTime: "5:17 PM",
        calledTimes: "2"),
    Callshistory(
      name: "Manu",
        image: "",
        isIncoming: false,
        isGroupCall: false,
        calledDay: "21/05/2023",
        calledTime: "2:56 PM",
        calledTimes: "0")
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white,
  leading: Padding(
    padding: const EdgeInsets.all(10),
    child: CircleAvatar(
      radius: 10,
      backgroundColor: Colors.teal,
    child: Icon(Icons.attach_file_rounded),),
  ),
  title: Column(
    children: [
      Text("Create call link",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      textAlign: TextAlign.left,),
      Text("Share a link for your Whatsapp call",
      style: TextStyle(
        color: Colors.black
      ),
      textAlign: TextAlign.left,)
    ],
  ),
bottom: PreferredSize(child: Text("Recent"), preferredSize: Size.zero),
),
body: ListView.builder(
  
  shrinkWrap: true,
  padding: EdgeInsets.all(12),
  itemCount: callHistory.length,
  itemBuilder: (context, index) {
  return ListTile(
    onTap: (){},
    leading: CircleAvatar(
  backgroundColor: Colors.white,
  backgroundImage: (callHistory[index].image) == "" ? NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKgAAACoCAMAAABDlVWGAAAAMFBMVEXk5ueutLeqsLPU19nn6erh4+S2u77P0tTGysza3d7e4OK8wcOzuLu5vsHDx8rKzc+uVCZYAAADwElEQVR4nO2b27ajIAxAAQOIF/z/vx3Qzhl7tC0EG3BN9lNXn/YKJtyCEAzDMAzDMAzDMAzDMAzDMMz/BIDQQ0BrCD8bJag568fZBOZ59HZo0TUodaP8jXeiMVdwy6QOnlIpswwNqYL28kRzc536VqIKon9l+XC1tRVXoDPvPYPp7OoHFfoPlhu2uun4KZyPoPq6mnpO0oymY82YwpTqGWNaz1RneMaYVhM9TkVNxhR8Wh7tTKvkPnS5noGO3hSGfE0pZ00v6jGiqqcOKWrgo+lALYrSDBDXfWxAJXU+5ZX6J0gnfbBoTylJv1JUym+QJv6A/kKjKZ0oLEWidOmUs7o7gbBClQRUSkM1jxYU0Q2qscdN8zuoVnuQvFE6R/U0nmIwhRGl2pO4sqQnyyboCj2lvI0ozXRftCJZUY5FWZRFxZ2y/i519DYzk9B3metvs3pKvF94Ddl69C4rfAGFeyYizRvtQsHeZF8vUKfNP6KUx3nZ9ww7T8qzp6J1Cc2K5C/4yYn2Wuw2J863OcMPSyjkrQixJvqeaaG/uhsw01OFmzsBmMGv0lsCH5pzjlBOnk8k9pP8eNbrgZhzTOkvbHGmVft0IN20dj9Rcr9GhQL6yzRlIaWmWvm+N3VnDZnPnmMbvZmwvPdsIZwboJfX/aNm0a14itizYyd1dFVqsi1pRgCcD8v+H9nwYzK9brEfO1RV1y1+HNeecb90TXaNP4hqOrbhbz8bJL4P0L8Qevu/FYKLdp1dB92sGaTU+oWGD2CxndMtBDdIDtbPm99JbVqFzbi4mpENY+36WZ0JHoXV5J2uUQPWdyFnpfONrByXjvjxAIA108vJ6I2sjKWVzFK7OSeUh8BaTRHXMK8bvObmGr7Xb5sC+NJLpk31uws/GPrCYO5czdcSC3SPyJ83quN3PgCwVwz6M/76oIL7+BgIgVL2WlUQ1476TvXSrILia9p3XHjhWHSt9BHlr5msoOSuJs3UXDH8kHtmh6J8Qw3Dx+OFKyh+lwPFbRnJpoWeNJqRklM01DE9loJzXtyTJbwp+jv9apk/A5v7WSf0V6BQy6n825lyMN0mxa04KBAH/agbxGLyEwooJs4zcj2rDHwk9z6/ysCvZNWo8qZbPFk9J+Slfk+XE9BaX2jEpI99Ye9dIRmt2pSLphOSEx8yH/hfTmrjia7smbqBrlmbNhJn/OIndcWYtAcFuvYnmtoQSbXxfE3ilrRycZLJ/SfVFk7/mJPSvsIW5ECKaFgy1ydp6F1XnyRRhmEYhmEY5v78ASlPMmDko7DOAAAAAElFTkSuQmCC"):
  NetworkImage(callHistory[index].image),
),
title: Text(
        
        callHistory[index].name,
        
  ),
  subtitle:  Row(
      children: [
       (callHistory[index].isIncoming )? Padding(
         padding: const EdgeInsets.only(left: 5),
         child: Icon(Icons.call_received_outlined,color: Colors.red,),
       ):
       Padding(
         padding: const EdgeInsets.only(left:5),
         child: Icon(Icons.call_made_rounded,color: Colors.green,),
       ),
       (callHistory[index].calledTimes == "0") ? Container() :Padding(
         padding: const  EdgeInsets.only(left: 5),
         child: Text("(${callHistory[index].calledTimes})",),
       ),
            Text(callHistory[index].calledDay),
       Padding(
         padding:const EdgeInsets.only(left: 5),
         child: Text(callHistory[index].calledTime),
       ),
     

      ],

    ) ,
    trailing: Icon(Icons.call,color: Colors.teal,)

  );
},),
floatingActionButton: FloatingActionButton(onPressed: (){},
child: Icon(Icons.add_ic_call_rounded),),
    );
  }
 
}