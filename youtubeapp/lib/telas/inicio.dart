// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
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
