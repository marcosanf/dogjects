import 'package:desafio/ui/core/theme/app_colors.dart';
import 'package:desafio/ui/core/ui/dg_button.dart';
import 'package:desafio/ui/home/view_model/home_viewmodel.dart';
import 'package:desafio/ui/home/widgets/home_view_body_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeViewmodel>(context, listen: false).fetchDog();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.watch<HomeViewmodel>();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(children: [_buildBody(homeViewModel)]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: DgButton(
          title: 'Próxima lição',
          onPressed: homeViewModel.loading
              ? null
              : () => context.read<HomeViewmodel>().fetchDog(),
        ),
      ),
    );
  }

  Widget _buildBody(HomeViewmodel viewModel) {
    if (viewModel.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (viewModel.dog.imageUrl.isEmpty) {
      return const Center(child: Text('No image available'));
    }

    return HomeViewBodyContent(
      imageUrl: viewModel.dog.imageUrl,
      concept: viewModel.currentConcept,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Dogject', style: TextStyle(color: AppColors.text)),
      backgroundColor: AppColors.background,
    );
  }
}
