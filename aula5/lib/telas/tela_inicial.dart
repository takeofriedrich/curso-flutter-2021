import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          print('Apertou o floating');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              x++;
            });
          },
        ),
        title: const Text('Aula 5'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onLongPress: () {
            print('pressionou por mais tempo!');
          },
          onPressed: () {
            print('pressionou!');
          },
          child: Text(
            'Pressione o botão',
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
        ),
      ),
    );
  }
}
