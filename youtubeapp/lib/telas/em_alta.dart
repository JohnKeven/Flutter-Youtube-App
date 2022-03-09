// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class em_alta extends StatefulWidget {
  const em_alta({Key? key}) : super(key: key);

  @override
  State<em_alta> createState() => _em_altaState();
}

class _em_altaState extends State<em_alta> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Em alta",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
