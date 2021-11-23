import 'package:flutter/material.dart';

class TelaImagem extends StatefulWidget {
  const TelaImagem({Key? key}) : super(key: key);

  @override
  _TelaImagemState createState() => _TelaImagemState();
}

class _TelaImagemState extends State<TelaImagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.network(
          'https://files.nsctotal.com.br/s3fs-public/graphql-upload-files/centro%20de%20Joinville_59.jpg?k6V.e9Jc8lWNdmps_OyeQNng0kTEaJ4I',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
