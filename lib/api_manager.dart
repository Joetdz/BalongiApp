// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'footmodel.dart';
import 'package:http/http.dart';
import 'package:dio/dio.dart';

class footApi {
  final Url = "https://v3.football.api-sports.io/fixtures?date=2022-07-25";

  final headers = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': '0716903c4aa407ed9058a491f5aebba7'
  };
  Future<List<MatchFoot>> getAllMatches() async {
    var body;
    // try {
    var response = await Dio().get(Url, options: Options(headers: headers));
    print(response.data);
    if (response.statusCode == 200) {
      body = Map<String, dynamic>.from(response.data);
      List<dynamic> matcheslist = body['response'];

      List<MatchFoot> matches = matcheslist
          .map((dynamic item) =>
              MatchFoot.fromJson(Map<String, dynamic>.from(item)))
          .toList();
      return matches;
      print(matches);
    }
    // } catch (e) {
    //   print(e);
    // }
    return [];
  }
}
