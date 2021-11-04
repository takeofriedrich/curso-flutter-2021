import 'package:aula6/telas/home_page.dart';
import 'package:aula6/telas/home_page2.dart';
import 'package:aula6/telas/home_page3.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
