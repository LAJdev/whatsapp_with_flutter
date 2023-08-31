import 'package:flutter/material.dart';
import 'repository.dart';
import 'tilediscusionwidget.dart';

class DiscussionWidget extends StatelessWidget {
  const DiscussionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: messagereceived.length,
        itemBuilder: (context, index) {
          return TileDiscussionWidget(
            message: messagereceived[index],
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