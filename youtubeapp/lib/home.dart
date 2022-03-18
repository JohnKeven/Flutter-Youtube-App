// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:youtubeapp/customSearchDelegate.dart';
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
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      inicio(_resultado),
      const em_alta(),
      const inscricoes(),
      const biblioteca(),
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
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              String? res = await showSearch(
                  context: context, delegate: customSearchDelegate());
              setState(() {
                _resultado = res!;
              });
              print("resultado: digitado " + res!);
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(16), child: telas[_indiceAtual]),
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
