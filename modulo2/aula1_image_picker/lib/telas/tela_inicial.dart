import 'package:aula1_image_picker/telas/tela_dois.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TelaInicial extends StatelessWidget {
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Tirar foto'),
          onPressed: () {
            imagePicker
                .pickImage(source: ImageSource.camera)
                .then((XFile? value) => {
                      value!.readAsBytes().then((bytes) => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Tela2(
                                bytes: bytes,
                              );
                            }))
                          })
                    });
          },
        ),
      ),
    );
  }
}
