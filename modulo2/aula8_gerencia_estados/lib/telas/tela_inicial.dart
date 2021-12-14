import 'package:aula7_crud/controllers/tela_inicial_controller.dart';
import 'package:aula7_crud/repositorys/banco_dados.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool loading = true;
  TelaInicialController controller = TelaInicialController();

  @override
  void initState() {
    super.initState();
    BancoDados().openDb().whenComplete(carregar);
  }

  carregar() {
    setState(() {
      loading = true;
    });
    controller.buscarPessoas().whenComplete(() {
      setState(() {
        loading = false;
      });
    });
  }

  cadastrar() {
    setState(() {
      loading = true;
    });
    controller.cadastrar().whenComplete(carregar);
  }

  remover(int i) {
    setState(() {
      loading = true;
    });
    controller.remover(i).whenComplete(carregar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: const [
                        Text('Digite o nome:'),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextField(
                      controller: controller.nomePessoa,
                      decoration:
                          const InputDecoration(hintText: 'Ex.: Vinicius'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: cadastrar, child: const Text('Salvar')),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Flexible(
                    flex: 7,
                    child: controller.pessoas.isEmpty
                        ? const Center(child: Text('Lista vazia'))
                        : _lista(),
                  )
                ],
              ),
      ),
    );
  }

  _lista() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(controller.pessoas[index].nome!),
          trailing: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              remover(index);
            },
          ),
        );
      },
      itemCount: controller.pessoas.length,
    );
  }
}
