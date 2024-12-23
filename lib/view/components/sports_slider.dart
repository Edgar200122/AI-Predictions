import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/view/components/text_widget.dart';

import '../../viewModel/providers/lines_provider.dart';

class SportsSlider extends StatelessWidget {
  final List<Map<String, String>> sports;

  const SportsSlider({
    super.key,
    required this.sports,
  });

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<LinesProvider>().selectedIndex;

    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sports.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => context.read<LinesProvider>().selectIndex(index),
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                     Color(0xff1E282F),
                     Color(0xff161519),
                    ],
                  ),
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: index == selectedIndex
                        ? const Color(0xffFF7950)
                        : Colors.grey,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 8.0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      sports[index]['icon']!,
                      width: 16,
                    ),
                    const SizedBox(width: 4),
                    TextWidget(
                      text: sports[index]['name']!,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
