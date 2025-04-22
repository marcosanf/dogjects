import 'package:desafio/domain/oop_concept.dart';
import 'package:desafio/ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeViewBodyContent extends StatelessWidget {
  final String imageUrl;
  final OopConcept concept;

  const HomeViewBodyContent({
    super.key,
    required this.imageUrl,
    required this.concept,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 427,
          height: 328,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: 395,
            height: 296,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          concept.title,
          style: const TextStyle(color: AppColors.text),
        ),
        const SizedBox(height: 16),
        Text(
          concept.concept,
          textAlign: TextAlign.justify,
          style: const TextStyle(color: AppColors.text),
        ),
      ],
    );
  }
}
