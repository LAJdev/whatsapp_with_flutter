import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'repository.dart';
import 'tilecallswidget.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: calllist.length,
        itemBuilder: (context, index) {
          return TileCallsWidget(
            call: calllist[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
            child: Divider(
                height: 2, color: Colors.black.withOpacity(0.2)),
          );
        },
      ),
    );
  }
}