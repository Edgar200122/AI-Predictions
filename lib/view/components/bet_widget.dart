import 'package:flutter/material.dart';

import 'text_widget.dart';

class BetWidget extends StatelessWidget {
  const BetWidget({
    super.key,
    this.leftBetBlocInside = false,
    this.rightBetBlocInside = false,
    this.leftBetOutside = false,
    this.rightBetOutside = false,
    required this.leftText,
    required this.rightText,
    required this.iconText,
  });
  final bool leftBetBlocInside;
  final bool rightBetBlocInside;
  final bool leftBetOutside;
  final bool rightBetOutside;
  final String leftText;
  final String rightText;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      padding: EdgeInsets.all(
        1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          width: 1,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: leftBetOutside
                    ? const Color(0xff2F3D48)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              child: TextWidget(
                text: leftText,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 6),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(
                  1,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                  color: leftBetBlocInside
                      ? const Color(0xff00FF57)
                      : Colors.transparent,
                ),
                child:  TextWidget(
                  text: 'Bet Now',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  
                  color: leftBetBlocInside
                      ? const Color(0xff161519)
                      : Colors.transparent, 
                ),
              ),
              Center(
                child: Image.asset(
                  iconText,
                  width: 40,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 6),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(
                  1,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                  color: rightBetBlocInside
                      ? const Color(0xff00FF57)
                      : Colors.transparent,
                ),
                child:  TextWidget(
                  text: 'Bet Now',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                   color: rightBetBlocInside
                      ? const Color(0xff161519)
                      : Colors.transparent, 
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: rightBetOutside
                    ? const Color(0xff2F3D48)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              height: 40,
              child: TextWidget(
                text: rightText,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
