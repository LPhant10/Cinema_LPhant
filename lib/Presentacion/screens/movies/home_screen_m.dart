import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomeScreenM extends StatelessWidget {

  // ruta de salida de HomeScreeM
  static const name = 'home-screen-m';

  const HomeScreenM({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Hola Luis'),),
      body: Center(
        child: Text(dotenv.env['THE_MOVIEDB_KEY'] ?? 'no hay apli key'),
      )
    );
}
}