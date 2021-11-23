import 'package:flutter/material.dart';

exibirDialogo(BuildContext context, String title, String conteudo) {
  showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(title),
          content: Text(conteudo),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'OK',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancelar',
              ),
            ),
          ],
        );
      });
}
