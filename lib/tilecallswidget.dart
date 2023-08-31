import 'package:flutter/material.dart';
import 'class.dart';

class TileCallsWidget extends StatelessWidget {
  final Call call;
  const TileCallsWidget({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          // const Icon(Icons.face, size: 80),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            child: ClipOval(
                child: Text(
              call.contact.image,
              style: const TextStyle(fontSize: 50),
            )),
          ),
          // Text(
          //   call.contact.image,
          //   style: const TextStyle(fontSize: 50),
          // ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // message.name,
                  call.contact.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    call.incoming == false
                        ? const Icon(
                            Icons.north_east,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.south_west,
                            color: Colors.red,
                          ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(call.date,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                call.icon,
                color: Colors.teal[800],
                size: 25,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
