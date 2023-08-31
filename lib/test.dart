import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children:  const [
            Icon(
              Icons.favorite_outline_outlined,
              size: 200,
              color: Colors.pink,
            ),
            Icon(
              Icons.flutter_dash,
              size: 80,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
