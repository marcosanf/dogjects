import 'dart:convert';

import 'package:desafio/model.dart';
import 'package:http/http.dart' as http;



Future<Dog> fetchDog() async {
  final response = await http.get(
    Uri.parse('https://dog.ceo/api/breeds/image/random'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Dog.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}