import 'package:flutter/material.dart';
import 'menu_rodape.dart';

class Cadeira extends StatelessWidget {
  String cadeiraTitulo = "";
  Color cadeiraCorTema;

  Cadeira(this.cadeiraTitulo, this.cadeiraCorTema);

  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cadeiraTitulo),
        backgroundColor: cadeiraCorTema,
      ),
      body: const Text("Another Page...!!!!!!"),
      bottomNavigationBar: MenuRodape()
    );
  }
}