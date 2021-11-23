import 'package:aula8/telas/tela_secundaria.dart';
import 'package:aula8/utils/funcoes.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula 8'),
        centerTitle: true,
        leading: Container(
          height: 10,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _navegar(context);
              },
              child: Text(
                'Navegar',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                exibirDialogo(context, 'Erro', 'Mensagem');
              },
              child: Text(
                'Exibir Diálogo',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                SnackBar snackBar = SnackBar(
                  content: Text('Exibindo snackbar'),
                  duration: Duration(seconds: 1),
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                'Exibir Snackbar',
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navegar(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return TelaSecundaria();
    })).then(
      (value) => print('Valor retornado: $value'),
    );
  }
}
