import 'package:flutter/material.dart';
import 'callsPage.dart';
import 'discussionPage.dart';
import 'statusPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WhatsAppWidget(),
      // home: MyWidget(),
    );
  }
}

class WhatsAppWidget extends StatefulWidget {
  const WhatsAppWidget({
    super.key,
  });

  @override
  State<WhatsAppWidget> createState() => _WhatsAppWidgetState();
}

class _WhatsAppWidgetState extends State<WhatsAppWidget> {
  int disc = 1;
  int statut = 0;
  int appels = 0;
  bool activediscbar = true;
  bool activestatusbar = false;
  bool activecallsbar = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal[800],
        title: const Text("WhatsApp", style: TextStyle(fontSize: 24)),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 1 / 10,
                        height: size.height * 1 / 20,
                        color: Colors.teal[800],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.photo_camera,
                              size: 30,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            Container()
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activediscbar = true;
                        activestatusbar = false;
                        activecallsbar = false;
                      });
                    },
                    child: Container(
                      width: size.width * 3 / 10,
                      height: size.height * 1 / 20,
                      color: Colors.teal[800],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("DISC.",
                                  style: TextStyle(
                                      color: disc == 0
                                          ? Colors.white.withOpacity(0.6)
                                          : Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                width: 15,
                              ),
                              disc == 0
                                  ? Container()
                                  : Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text("1",
                                          style: TextStyle(
                                              color: Colors.teal[800],
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
                                    ),
                            ],
                          ),
                          activediscbar
                              ? Container(
                                  // width: 20,
                                  height: 5,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activediscbar = false;
                        activestatusbar = true;
                        activecallsbar = false;
                      });
                    },
                    child: Container(
                      width: size.width * 3 / 10,
                      height: size.height * 1 / 20,
                      color: Colors.teal[800],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("STATUT",
                                  style: TextStyle(
                                      color: statut == 0
                                          ? Colors.white.withOpacity(0.6)
                                          : Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                width: 15,
                              ),
                              statut == 0
                                  ? Container()
                                  : Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text("1",
                                          style: TextStyle(
                                              color: Colors.teal[800],
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
                                    ),
                            ],
                          ),
                          activestatusbar
                              ? Container(
                                  // width: 20,
                                  height: 5,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activediscbar = false;
                        activestatusbar = false;
                        activecallsbar = true;
                      });
                    },
                    child: Container(
                      width: size.width * 3 / 10,
                      height: size.height * 1 / 20,
                      color: Colors.teal[800],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("APPELS",
                                  style: TextStyle(
                                      color: appels == 0
                                          ? Colors.white.withOpacity(0.6)
                                          : Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                width: 15,
                              ),
                              appels == 0
                                  ? Container()
                                  : Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text("1",
                                          style: TextStyle(
                                              color: Colors.teal[800],
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
                                    ),
                            ],
                          ),
                          activecallsbar
                              ? Container(
                                  // width: 20,
                                  height: 5,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              activediscbar
                  ? const DiscussionWidget()
                  : activestatusbar
                      ? const StatusPage()
                      : const CallsPage()
            ],
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.circular(35)),
              child: const Icon(
                Icons.message,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
