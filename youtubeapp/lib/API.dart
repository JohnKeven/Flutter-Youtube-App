// ignore_for_file: file_names, constant_identifier_names
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtubeapp/model/video.dart';

const API_KEY = "";
const ID_CANAL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  Future<List<video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(Uri.parse(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$API_KEY"
            //"&channelId=$ID_CANAL"
            "&q=$pesquisa"));

    if (response.statusCode == 200) {
      debugger;
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<video> videos = dadosJson["items"].map<video>((map) {
        return video.fromJson(map);
      }).toList();
      return videos;
    } else {
      return throw "Erro ao buscar videos " + response.statusCode.toString();
    }
  }
}
