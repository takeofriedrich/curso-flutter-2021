import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula 6 - Expanded'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
          Flexible(
            flex: 7,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
