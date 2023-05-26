import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/utility_widget.dart';

import '../models/calls_history.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
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
            "data:image/jpeg;base64,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",
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        body: Center(
                          child: Scaffold(
                            appBar: AppBar(
                              title: Text("Create call link"),
                            ),
                            body: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Anyone with Whatsapp can use this link to join this call. Only share it with people you trust."),
                                ),
                                UtilityWidget().heightSpace(20),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.teal,
                                      child: Icon(
                                        Icons.videocam,
                                        color: Colors.white,
                                      ),
                                    ),
                                    UtilityWidget().widthSpace(10),
                                    Text(
                                      "https://call.whatsapp.com/video/btDXAQcCjRwI6GH7NIYXOc",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ),
                                UtilityWidget().heightSpace(10),
                                Row(
                                  children: [
                                    UtilityWidget().widthSpace(30),
                                    Text(
                                      "Call type",
                                    ),
                                  ],
                                ),
                                UtilityWidget().heightSpace(10),
                                Row(
                                  children: [
                                    UtilityWidget().widthSpace(30),
                                    Text(
                                      "Video",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Row(
                                  children: [
                                    UtilityWidget().widthSpace(20),
                                    Icon(Icons.send),
                                    UtilityWidget().widthSpace(20),
                                    Text("Send link via Whatsapp")
                                  ],
                                ),
                                UtilityWidget().heightSpace(20),
                                Row(
                                  children: [
                                    UtilityWidget().widthSpace(20),
                                    Icon(Icons.copy),
                                    UtilityWidget().widthSpace(20),
                                    Text("Copy link")
                                  ],
                                ),
                                UtilityWidget().heightSpace(20),
                                Row(
                                  children: [
                                    UtilityWidget().widthSpace(20),
                                    Icon(Icons.share),
                                    UtilityWidget().widthSpace(20),
                                    Text("Share link")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
              },
              child: ListTile(
                leading: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.attach_file_outlined),
                ),
                title: Text(
                  "Create call link",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  "Share a link for your whatsapp call",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Recent"),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(12),
              itemCount: callHistory.length,
              itemBuilder: (context, index) {
                return ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: (callHistory[index].image) == ""
                          ? NetworkImage(
                              "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKgAAACoCAMAAABDlVWGAAAAMFBMVEXk5ueutLeqsLPU19nn6erh4+S2u77P0tTGysza3d7e4OK8wcOzuLu5vsHDx8rKzc+uVCZYAAADwElEQVR4nO2b27ajIAxAAQOIF/z/vx3Qzhl7tC0EG3BN9lNXn/YKJtyCEAzDMAzDMAzDMAzDMAzDMMz/BIDQQ0BrCD8bJag568fZBOZ59HZo0TUodaP8jXeiMVdwy6QOnlIpswwNqYL28kRzc536VqIKon9l+XC1tRVXoDPvPYPp7OoHFfoPlhu2uun4KZyPoPq6mnpO0oymY82YwpTqGWNaz1RneMaYVhM9TkVNxhR8Wh7tTKvkPnS5noGO3hSGfE0pZ00v6jGiqqcOKWrgo+lALYrSDBDXfWxAJXU+5ZX6J0gnfbBoTylJv1JUym+QJv6A/kKjKZ0oLEWidOmUs7o7gbBClQRUSkM1jxYU0Q2qscdN8zuoVnuQvFE6R/U0nmIwhRGl2pO4sqQnyyboCj2lvI0ozXRftCJZUY5FWZRFxZ2y/i519DYzk9B3metvs3pKvF94Ddl69C4rfAGFeyYizRvtQsHeZF8vUKfNP6KUx3nZ9ww7T8qzp6J1Cc2K5C/4yYn2Wuw2J863OcMPSyjkrQixJvqeaaG/uhsw01OFmzsBmMGv0lsCH5pzjlBOnk8k9pP8eNbrgZhzTOkvbHGmVft0IN20dj9Rcr9GhQL6yzRlIaWmWvm+N3VnDZnPnmMbvZmwvPdsIZwboJfX/aNm0a14itizYyd1dFVqsi1pRgCcD8v+H9nwYzK9brEfO1RV1y1+HNeecb90TXaNP4hqOrbhbz8bJL4P0L8Qevu/FYKLdp1dB92sGaTU+oWGD2CxndMtBDdIDtbPm99JbVqFzbi4mpENY+36WZ0JHoXV5J2uUQPWdyFnpfONrByXjvjxAIA108vJ6I2sjKWVzFK7OSeUh8BaTRHXMK8bvObmGr7Xb5sC+NJLpk31uws/GPrCYO5czdcSC3SPyJ83quN3PgCwVwz6M/76oIL7+BgIgVL2WlUQ1476TvXSrILia9p3XHjhWHSt9BHlr5msoOSuJs3UXDH8kHtmh6J8Qw3Dx+OFKyh+lwPFbRnJpoWeNJqRklM01DE9loJzXtyTJbwp+jv9apk/A5v7WSf0V6BQy6n825lyMN0mxa04KBAH/agbxGLyEwooJs4zcj2rDHwk9z6/ysCvZNWo8qZbPFk9J+Slfk+XE9BaX2jEpI99Ye9dIRmt2pSLphOSEx8yH/hfTmrjia7smbqBrlmbNhJn/OIndcWYtAcFuvYnmtoQSbXxfE3ilrRycZLJ/SfVFk7/mJPSvsIW5ECKaFgy1ydp6F1XnyRRhmEYhmEY5v78ASlPMmDko7DOAAAAAElFTkSuQmCC")
                          : NetworkImage(callHistory[index].image),
                    ),
                    title: Text(
                      callHistory[index].name,
                    ),
                    subtitle: Row(
                      children: [
                        (callHistory[index].isIncoming)
                            ? Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.call_received_outlined,
                                  color: Colors.red,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.call_made_rounded,
                                  color: Colors.green,
                                ),
                              ),
                        (callHistory[index].calledTimes == "0")
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "(${callHistory[index].calledTimes})",
                                ),
                              ),
                        Text(callHistory[index].calledDay),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(callHistory[index].calledTime),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_ic_call_rounded),
      ),
    );
  }
}
