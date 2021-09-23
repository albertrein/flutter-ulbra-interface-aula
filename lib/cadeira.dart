import 'package:flutter/material.dart';
import 'menu_rodape.dart';

class Cadeira extends StatelessWidget {
  String cadeiraTitulo = "";
  Color cadeiraCorTema;

  Cadeira(this.cadeiraTitulo, this.cadeiraCorTema);

  @override
  Widget build (BuildContext ctxt) {
    ListTile _itemRoteiro(String title, IconData icone, [Text? subTitulo]) {
      return ListTile(
        title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )
        ),
        subtitle: subTitulo,
        leading: Icon(
          icone,
          color: cadeiraCorTema,
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(cadeiraTitulo),
        backgroundColor: cadeiraCorTema,
      ),
      body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('Aula 1', style: TextStyle(fontSize: 30)),
            ),
            _itemRoteiro('Apostila', Icons.insert_link_rounded),
            _itemRoteiro('Video da disciplina', Icons.play_arrow_rounded),
            _itemRoteiro('Documentos importantes', Icons.insert_drive_file_rounded),
            _itemRoteiro('TDE', Icons.star_border_rounded),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('Aula 2', style: TextStyle(fontSize: 30)),
            ),
            _itemRoteiro('Link aula remota', Icons.insert_link_rounded),
            _itemRoteiro('Gravacao da aula', Icons.insert_drive_file_rounded),
            _itemRoteiro('TDE', Icons.star_border_rounded, const Text('23/09/2021')),
          ],
      ),        
      bottomNavigationBar: MenuRodape()
    );
  }
}