import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewModel/providers/home_provider.dart';
import '../components/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider.homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: HomeProvider.pages[HomeProvider.homeProvider!.activePageIndex],
      bottomNavigationBar: const BottomBar(),
    );
  }
}
