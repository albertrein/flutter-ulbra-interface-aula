import 'package:flutter/material.dart';
import 'menu_lateral.dart';
import 'salas_virtuais.dart';
import 'menu_rodape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: MenuLateral(),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Image.asset('assets/images/aula_logo.png', fit: BoxFit.cover, width: 60,),
        ),
        actions: [
          IconButton(
              icon: Image.asset('assets/images/aluno.jpg', height: 40),
              iconSize: 50,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Aluno: Guilherme Reinheimer')));
              },
            )
        ] 
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          SalaVirtual('Comunicacao para o Planejamento Profissional','1','22','2', Colors.blue.shade200),
          SalaVirtual("Cultura Religiosa",'0','2','3', Colors.green.shade900),
          SalaVirtual("Desenvolvimento de Sistemas Moveis",'2','2','0', Colors.red.shade900),
          SalaVirtual("Fundamentos de Bancos de Dados",'2','2','3', Colors.brown),
          SalaVirtual("Sociedade e Contemporaneidade",'2','2','5', Colors.green),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                new Icon(Icons.message_outlined),
                new Positioned(
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: new Text(
                      '0',
                      style: new TextStyle(
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
            icon: new Stack(
              children: <Widget>[
                new Icon(Icons.add_alert_outlined),
                new Positioned(
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: new Text(
                      '12',
                      style: new TextStyle(
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
        backgroundColor: Colors.black54,
        selectedItemColor: Colors.yellow,
      )
    );
  }
}
