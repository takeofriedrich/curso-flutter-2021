import 'package:aula7/controllers/tela_inicial_controller.dart';
import 'package:aula7/telas/widgets/contato_widget.dart';
import 'package:aula7/telas/widgets/text_label.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TelaInicialController controller = TelaInicialController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextLabel(text: 'Digite o nome:'),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              controller: controller.caixaNome,
              decoration: const InputDecoration(
                hintText: 'Vinicius Takeo',
              ),
            ),
          ),
          TextLabel(text: 'Digite o telefone:'),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              controller: controller.caixaTelefone,
              decoration: const InputDecoration(
                hintText: '47999999999',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  controller.salvarContato();
                });
              },
              child: const Text('Salvar'),
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Flexible(
            child: _lista(),
          ),
        ],
      ),
    );
  }

  _lista() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int i) {
        return Dismissible(
          key: Key('$i'),
          child: ContatoWidget(contato: controller.contatos[i]),
          onDismissed: (_) {
            print('Removendo');
          },
        );
      },
      itemCount: controller.contatos.length,
    );
  }
}
