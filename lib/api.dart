import 'dart:convert';

import 'package:desafio/domain/dog.dart';
import 'package:http/http.dart' as http;



Future<Dog> fetchDog() async {
  final response = await http.get(
    Uri.parse('https://dog.ceo/api/breeds/image/random'),
  );

  if (response.statusCode == 200) {
    return Dog.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}