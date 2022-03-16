// ignore_for_file: camel_case_types

class video {
  String? id;
  String? titulo;
  String? descricao;
  String? imagem;
  String? canal;

  video({id, titulo, descricao, imagem, canal});

  // factory para retornar uma única instancia de video
  factory video.fromJson(Map<String, dynamic> json) {
    video vid = video();
    vid.id = json["id"]["videoId"];
    vid.titulo = json["snippet"]["title"];
    vid.descricao = json["snippet"]["description"];
    vid.imagem = json["snippet"]["thumbnails"]["high"]["url"];
    vid.canal = json["snippet"]["channelTitle"];
    return vid;
  }
}
