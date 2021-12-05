import 'package:aula4_local_notification/apis/notification_api.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  void initState() {
    super.initState();
    NotificationApi.init();
    escutaNotificacoes();
  }

  escutaNotificacoes() {
    NotificationApi.onNotication.stream.listen((event) {
      if (event == 'simples.01') {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
          return TelaInicial();
        }));
      }
      if (event == 'simples.02') {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula 4'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                NotificationApi.exibirNotificacao(
                  id: 0,
                  title: 'Exemplo de notificação',
                  body: 'Você clicou na notificação',
                  payload: 'simples.01',
                );
              },
              child: Text('Enviar agora'),
            ),
          ),
          TextButton(
            onPressed: () {
              NotificationApi.agendarNotificacao(
                id: 0,
                title: 'Notificação agendada',
                body: 'Você agendou!',
                payload: 'simples.02',
                data: DateTime.now().add(
                  const Duration(seconds: 3),
                ),
              );
            },
            child: Text('Enviar depois'),
          ),
        ],
      ),
    );
  }
}
