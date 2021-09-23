import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(      
      child: ListView(        
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100.0,
            child: const DrawerHeader(
              child: Text(
                'Aluno',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  color: Colors.black87,                  
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Salas virtuais'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Anotacoes de aula'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.align_vertical_bottom_sharp),
            title: Text('Avaliacao institucional'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.analytics_outlined),            
            title: Text('Desempenho'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.align_vertical_center_sharp),
            title: Text('Frequencia'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.thermostat),  
            title: Text('Laboratorio virtual'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.document_scanner_outlined),
            title: Text('Materiais de apoio'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Minha biblioteca'),
            leading: Icon(Icons.library_books_outlined),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.class__outlined),
            title: Text('Minhas turmas'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.align_vertical_bottom_sharp),
            title: Text('Pearson'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Sair'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}