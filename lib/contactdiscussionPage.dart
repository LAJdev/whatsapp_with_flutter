import 'dart:math';

import 'package:flutter/material.dart';

import 'constant.dart';

class ContactDiscussionPage extends StatelessWidget {
  const ContactDiscussionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.8),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // leading: const Icon(Icons.arrow_back),
          // leading: const CircleAvatar(
          //   backgroundColor: Colors.transparent,
          //   radius: 30,
          //   child: ClipOval(
          //       child: Text(
          //     "🤳",
          //     style: TextStyle(fontSize: 60),
          //   )),
          // ),
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back)),
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 20,
                  child: ClipOval(
                      child: Text(
                    "🤳",
                    style: TextStyle(fontSize: 40),
                  )),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("contactname"),
                const Spacer(),
                const Icon(Icons.videocam),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.call),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
          // actions: const [
          //   Icon(Icons.videocam),
          //   Icon(Icons.call),
          //   Icon(Icons.more_vert),
          // ],
        ),
        body: Stack(
          children: [
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 1,
                itemBuilder: (context, index) {
                  // return mymessage();
                  return const contactmessage();
                }),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.face),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(child: TextMessageEditting()),
                        const SizedBox(
                          width: 10,
                        ),
                        Transform.rotate(
                            angle: -pi / 4.0, child: const Icon(Icons.attach_file)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.photo_camera),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: colorpalette.shade500,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Icon(
                      Icons.mic,
                      size: 20,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class TextMessageEditting extends StatelessWidget {
  const TextMessageEditting({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      
    );
  }
}

class mymessage extends StatelessWidget {
  const mymessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 10, left: MediaQuery.of(context).size.width * 0.3),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: const Text(
          "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata"),
    );
  }
}

class contactmessage extends StatelessWidget {
  const contactmessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 10, right: MediaQuery.of(context).size.width * 0.3),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: const Text("data"),
    );
  }
}
