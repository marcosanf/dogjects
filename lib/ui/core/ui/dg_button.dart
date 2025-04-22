import 'package:desafio/ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DgButton extends StatelessWidget {
  const DgButton({super.key, this.onPressed, required this.title});

  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size(427, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(title, style: TextStyle(color: AppColors.text, fontSize: 16)),
    );
  }
}