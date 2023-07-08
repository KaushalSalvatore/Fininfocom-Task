import 'dart:convert';
import 'dart:developer';
import 'package:fininfocom/model/dogImage.dart';
import 'package:fininfocom/model/result.dart';
import 'package:fininfocom/model/userprofile.dart';
import 'package:http/http.dart' as http;

class Services {
  static const String url = 'https://dog.ceo/api/breeds/image/random';
  static const String user_url = 'https://randomuser.me/api/';

  static Future<DogImage> fetchData() async {
    final response = await http
        .get(Uri.parse(url));

    if (response.statusCode == 200) {
        log("message ${response.body}");
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return DogImage.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
  static Future<UserProfile> fetchUserData() async {
    final response = await http.get(Uri.parse(user_url));
    log('body ${response.body}');
    log('statusCode ${response.statusCode}');
    if (response.statusCode == 200) {
      log("message");
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return UserProfile.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }


}

