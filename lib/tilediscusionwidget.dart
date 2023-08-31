import 'package:flutter/material.dart';
import 'class.dart';

class TileDiscussionWidget extends StatelessWidget {
  final Message message;
  const TileDiscussionWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          // const Icon(Icons.face, size: 80),
          Text(
            message.contact.image,
            style: const TextStyle(fontSize: 50),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // message.name,
                  message.contact.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    message.iswritten == false
                        ? message.isread
                            ? Stack(
                                children: const [
                                  Positioned(
                                      left: 5,
                                      child: Icon(Icons.check,
                                          color: Colors.blue)),
                                  Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                  ),
                                ],
                              )
                            : const Icon(
                                Icons.check,
                                color: Colors.grey,
                              )
                        : Container(),
                    message.isread
                        ? const SizedBox(
                            width: 10,
                          )
                        : Container(),
                    Expanded(
                      child: Text(message.message,
                          style: TextStyle(
                              color: message.iswritten
                                  ? Colors.green
                                  : Colors.black.withOpacity(0.5),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis)),
                    ),
                  ],
                )
              ],
            ),
          ),
          // const Spacer(),
          Column(
            children: [
              Text(message.date,
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 10,
              ),
              message.isread
                  ? Container()
                  : Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[400],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
