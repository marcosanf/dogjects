import 'package:desafio/data/repositories/oop_concept_repository.dart';
import 'package:desafio/data/services/dog_service.dart';
import 'package:desafio/domain/dog.dart';
import 'package:desafio/domain/oop_concept.dart';
import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
  final DogService _dogService = DogService();
  final OopConceptRepository _conceptRepository = OopConceptRepository();

  Dog _dog = Dog(imageUrl: '');
  bool _loading = false;
  int _conceptIndex = 0;

  late final List<OopConcept> _concepts;

  Dog get dog => _dog;
  bool get loading => _loading;
  OopConcept get currentConcept => _concepts[_conceptIndex];

  HomeViewmodel() {
    _concepts = _conceptRepository.getConcepts();
  }

  Future<void> fetchDog() async {
    _loading = true;
    notifyListeners();

    _dog = await _dogService.fetchDog();

    _conceptIndex = (_conceptIndex + 1) % _concepts.length;

    _loading = false;
    notifyListeners();
  }
}
