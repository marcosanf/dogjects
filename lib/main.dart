// main.dart
import 'package:desafio/ui/home/view_model/home_viewmodel.dart';
import 'package:desafio/ui/home/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewmodel()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}