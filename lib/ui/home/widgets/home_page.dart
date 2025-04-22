import 'package:desafio/ui/home/view_model/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewmodel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dogject'),
      ),
      body: Container(),
    );
  }
}