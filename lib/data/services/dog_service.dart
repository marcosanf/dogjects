import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../domain/dog.dart';

class DogService {

  Future<Dog> fetchDog() async {
    final response = await http.get(
      Uri.parse('https://dog.ceo/api/breeds/image/random'),
    );

    if (response.statusCode == 200) {
      return Dog.fromJson(jsonDecode(response.body));
    } else { 
      throw Exception('Failed to load dog image');
    }
  }
}
