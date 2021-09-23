import 'package:flutter/material.dart';

class MenuRodape extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(        
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                const Icon(Icons.message_outlined),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            label: ('Mensagens'),
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                const Icon(Icons.add_alert_outlined),
                Positioned(
                  right: 0,
                  child:  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '6',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            label: ('Avisos'),
          ),
        ],
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
      );    
  }
}