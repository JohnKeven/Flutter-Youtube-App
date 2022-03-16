// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:youtubeapp/API.dart';
import 'package:youtubeapp/model/video.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  _listarVideos() {
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<video>>(
        future: _listarVideos(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    List<video> videos = snapshot.data!;
                    video vid = videos[index];
                    return Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(vid.imagem ?? "Sem img"),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(vid.titulo ?? "Sem titulo"),
                          subtitle: Text(vid.canal ?? "Sem canal"),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(height: 2, color: Colors.grey),
                  itemCount: snapshot.data?.length ?? 0,
                );
              } else {
                return const Center(child: Text("Nenhum dado a ser exibido"));
              }
          }
        });
  }
}
