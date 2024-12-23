import 'package:flutter/material.dart';

import '../components/text_widget.dart';

class PropsScreen extends StatelessWidget {
  const PropsScreen({super.key});

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
