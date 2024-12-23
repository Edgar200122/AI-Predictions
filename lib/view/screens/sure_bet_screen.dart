import 'package:flutter/material.dart';

import '../components/text_widget.dart';

class SureBetScreen extends StatelessWidget {
  const SureBetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: TextWidget(
            text: 'SureBetScreen',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
