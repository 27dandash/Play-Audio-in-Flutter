import 'package:flutter/material.dart';

import '../constants.dart';
class AudioInfo extends StatelessWidget {

  AudioInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: t[r],
          child: Image.asset(
            i[r],
            width: 300,
            height: 200,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          t[r],
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 20),
         Text(
          singer[r],
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
