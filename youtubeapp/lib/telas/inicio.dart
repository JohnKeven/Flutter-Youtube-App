// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:youtubeapp/API.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    Api api = Api();
    api.pesquisar("");
    return const Center(
      child: Text(
        "Início",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
