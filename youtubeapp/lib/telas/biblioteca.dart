// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class biblioteca extends StatefulWidget {
  const biblioteca({Key? key}) : super(key: key);

  @override
  State<biblioteca> createState() => _bibliotecaState();
}

class _bibliotecaState extends State<biblioteca> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Biblioteca",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
