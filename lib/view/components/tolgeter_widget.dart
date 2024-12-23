import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/view/components/text_widget.dart';

import '../../viewModel/providers/lines_provider.dart';

class CustomToggleSwitch extends StatelessWidget {
  final List<String> options;

  const CustomToggleSwitch({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    final selectedToggleIndex =
        context.watch<LinesProvider>().selectedToggleIndex;

    return Container(
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
 color: const Color(0xff2F3D48),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(options.length, (index) {
          final isSelected = index == selectedToggleIndex;
          return GestureDetector(
            onTap: () {
              context.read<LinesProvider>().setSelectedToggleIndex(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
        
              child: TextWidget(
                text: options[index],
                fontSize: 14,
                color:  isSelected ? const Color(0xff161519) : const Color(0xff979EA3),
              ),
            ),
          );
        }),
      ),
    );
  }
}
