import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible e Column'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.red,
          ),
          Flexible(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}
