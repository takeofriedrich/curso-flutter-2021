import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sensors/sensors.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  AccelerometerEvent? acelerometro;
  UserAccelerometerEvent? acelemetroUsuario;
  GyroscopeEvent? giroscopio;
  LocationData? location;

  List<StreamSubscription> inscricoes = [];

  @override
  void initState() {
    super.initState();
    Location.instance.changeSettings(interval: 3000);
    inscricoes.add(accelerometerEvents.listen(escutaAcelerometro));
    inscricoes.add(userAccelerometerEvents.listen((event) {
      setState(() {
        acelemetroUsuario = event;
      });
    }));
    inscricoes.add(Location.instance.onLocationChanged.listen((event) {
      setState(() {
        location = event;
      });
    }));
  }

  void escutaAcelerometro(AccelerometerEvent event) {
    setState(() {
      acelerometro = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula 3'),
        centerTitle: true,
      ),
      body: Center(
        // child: TextButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text('Navega para outra tela'),
        // ),
        child: location != null
            ? Text('Lat:${location!.latitude}\nLong:${location!.longitude}')
            : Text('Não há dados do sensor'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (StreamSubscription inscricao in inscricoes) {
      inscricao.cancel();
    }
  }
}
