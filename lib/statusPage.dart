import 'package:flutter/material.dart';

import 'repository.dart';
import 'tilestatuswidget.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  bool ismessagedisabled = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: statuslist.length,
        // itemCount: messagereceived.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index == 0
                  ? !ismessagedisabled
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          color: const Color.fromARGB(255, 188, 237, 230),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 30,
                                    child: ClipOval(
                                        child: Text(
                                      "🤳",
                                      style: TextStyle(fontSize: 60),
                                    )),
                                  ),
                                  Text(
                                    "You can now share with your contacts photos and videos that disappear after 24 hours",
                                    textAlign: TextAlign.center,
                                  ),
                                  Text("PRIVACY SETTINGS")
                                ],
                              ),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ismessagedisabled = !ismessagedisabled;
                                      });
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.teal[800],
                                    ),
                                  )),
                            ],
                          ),
                        )
                      : Container()
                  : Container(),
              TileStatusWidget(
                status: statuslist[index],
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
            child: Divider(height: 2, color: Colors.black.withOpacity(0.2)),
          );
        },
      ),
    );
  }
}
