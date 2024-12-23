import 'package:flutter/material.dart';

import '../components/text_widget.dart';

class EvPlusScreen extends StatelessWidget {
  const EvPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: TextWidget(
            text: 'EvPlusScreen',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
