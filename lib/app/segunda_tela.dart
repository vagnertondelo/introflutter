import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SegundaTela extends StatefulWidget {
  const SegundaTela({super.key});

  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:  ListView(
          //teste de comentario
          //padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),

            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: "navegou")),
                );
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

              Text("MInha segunda tela")
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
