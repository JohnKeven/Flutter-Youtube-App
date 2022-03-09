// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:youtubeapp/telas/biblioteca.dart';
import 'package:youtubeapp/telas/em_alta.dart';
import 'package:youtubeapp/telas/inicio.dart';
import 'package:youtubeapp/telas/inscricoes.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      inicio(),
      em_alta(),
      inscricoes(),
      biblioteca(),
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey,
          opacity: 1,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Ação videocam");
            },
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {
              print("Ação Search");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("Ação Conta");
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            //backgroundColor: Colors.orange,
            label: "Início",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.red,
            label: "Em Alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.blue,
            //label: "Inscrições",
            label: "Inscrições",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.green,
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
