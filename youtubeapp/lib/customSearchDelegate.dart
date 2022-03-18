// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';

class customSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query.toString());
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Sugestões de forma estática apenas para representar
    List<String>? lista = [];
    if (query.isNotEmpty) {
      lista = ["Android", "Android Navegação", "IOs", "Musicas"]
          .where((texto) => texto.toLowerCase().startsWith(query.toLowerCase()))
          .toList();

      return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () {
                close(context, lista![index]);
              },
              title: Text(lista![index]));
        },
      );
    } else {
      return const Center(
        child: Text("Nenhum resultado para pesquisa"),
      );
    }
  }
}
