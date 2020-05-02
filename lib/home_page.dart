import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var frases = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas venenatis nisl et quam consectetur consequat. Vestibulum feugiat nibh',
    'ac elementum interdum. Mauris auctor, purus nec pharetra vehicula, sapien nisl efficitur arcu, ut vehicula tortor orci eu leo. Quisque',
    'feugiat quam id vehicula venenatis. Quisque rutrum ultrices velit, nec tristique sapien euismod eget. Curabitur ac sapien cursus, molestie',
    'nulla ac, convallis ex. Quisque blandit sodales molestie. Mauris laoreet lorem quis risus scelerisque consequat. Mauris sapien tortor,'
  ];

  var _frase = '';

  void obterFrase() {
    var _indice = Random().nextInt(4);
    setState(() {
      _frase = frases[_indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Image.asset('imagens/logo.png'),
            ),
            RaisedButton(
              onPressed: () {
                obterFrase();
              },
              color: Colors.green,
              child: Text('Clique aqui'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                _frase,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontFamily: 'Arial',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
