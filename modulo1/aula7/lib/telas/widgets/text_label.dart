import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String text;

  TextLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
