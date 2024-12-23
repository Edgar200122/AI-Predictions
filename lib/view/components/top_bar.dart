import 'package:flutter/material.dart';

import 'text_widget.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.onTap,
  });
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            width: 61,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color(0xff4a5054),
              ),
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xff1c242a),
            ),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Vector 9.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    const TextWidget(
                      text: 'Back',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Expanded(
          child: Center(
            child: TextWidget(
              text: 'AI Predictions - Moneyline ',
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(
          width: 61,
        ),
      ],
    );
  }
}
