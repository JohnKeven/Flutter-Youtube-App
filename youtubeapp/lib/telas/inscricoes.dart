// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class inscricoes extends StatefulWidget {
  const inscricoes({Key? key}) : super(key: key);

  @override
  State<inscricoes> createState() => _inscricoesState();
}

class _inscricoesState extends State<inscricoes> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Inscrições",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
