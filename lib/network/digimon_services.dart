import 'dart:convert';
import 'dart:io';
import 'package:flutter_challenge/model/digimon.dart';
import 'package:http/http.dart' as http;

class DigimonListServices {
  Future<List<Digimon>> fetchDigimon({http.Client? client}) async {
    final url = "https://digimon-api.vercel.app/api/digimon/";
    final headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    client = http.Client();

    var response = await client.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      List<dynamic> digimonData = jsonDecode(response.body);

      return digimonData.map((e) => Digimon.fromJson(e)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
