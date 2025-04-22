import 'package:desafio/data/services/dog_service.dart';
import 'package:desafio/domain/dog.dart';
import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
  final DogService _dogService = DogService();

  Dog _dog = Dog(imageUrl: '');
  bool _loading = false;

  Dog get dog => _dog;
  bool get loading => _loading;

  Future<void> fetchDog() async {
    _loading = true;
    notifyListeners();

    _dog = await _dogService.fetchDog();

    _loading = false;
    notifyListeners();
  }
}