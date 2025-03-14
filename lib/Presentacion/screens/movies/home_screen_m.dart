//import 'package:cinema_lphant/config/constants/environment.dart';
import 'package:flutter/material.dart';

class HomeScreenM extends StatelessWidget {

  // ruta de salida de HomeScreeM
  static const name = 'home-screen-m';

  const HomeScreenM({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Hola Luis'),),
      body: Placeholder(
        
      )
      /* Center(
        child: Text(Environment.theMovieDBkey),
      ) */
    );
}
}