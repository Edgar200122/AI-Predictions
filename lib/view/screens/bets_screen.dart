import 'package:flutter/material.dart';
import 'package:test_project/view/components/text_widget.dart';

class BetsScreen extends StatelessWidget {
  const BetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: TextWidget(
            text: 'BetsScreen',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
