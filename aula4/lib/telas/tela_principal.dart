import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.blue,
          width: 100,
          child: Text(
            '$contador',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            overflow: TextOverflow.fade,
            textDirection: TextDirection.rtl,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          const Icon(
            Icons.add_a_photo,
            color: Colors.amber,
          ),
          const Icon(
            Icons.add_a_photo_outlined,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: funcaoDoBotao,
              icon: Icon(
                Icons.add,
              ),
              tooltip: 'Incrementar',
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.amberAccent,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(50),
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 50,
        ),
      ),
      drawer: Drawer(),
    );
  }

  funcaoDoBotao() {
    setState(() {
      contador++;
      // print('botão pressionado! $contador');
    });
  }
}
