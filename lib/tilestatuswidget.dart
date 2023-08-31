import 'package:flutter/material.dart';
import 'class.dart';

class TileStatusWidget extends StatelessWidget {
  final Status status;
  const TileStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          // const Icon(Icons.face, size: 80),
          Text(
            status.image,
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
                  // message.contact.name,
                  status.status,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    
                    Expanded(
                      child: Text(status.date,
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
          
        ],
      ),
    );
  }
}
