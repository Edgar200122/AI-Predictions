import 'package:flutter/material.dart';
import 'package:test_project/view/components/text_widget.dart';

class TeamScoreWidget extends StatelessWidget {
  final String teamLogo;
  final String teamName;
  final String teamLogoTwo;
  final String teamNameTwo;
  final String status;
  final String score;
  final String scoreTwo;
  final String data;
  final String result;
  final int winProbability;
  final int leftPercent;
  final int rightPercent;
  final int centerPercent;
  final String resultLogo;
  final String overallResult;
  final String matchWinner;
  final bool scoreIsTrue;

  const TeamScoreWidget({
    super.key,
    required this.teamLogo,
    required this.teamName,
    required this.data,
    required this.score,
    required this.winProbability,
    required this.teamNameTwo,
    required this.scoreTwo,
    required this.teamLogoTwo,
    required this.status,
    required this.leftPercent,
    required this.rightPercent,
    required this.centerPercent,
    required this.result,
    required this.resultLogo,
    required this.overallResult,
    required this.matchWinner,
    required this.scoreIsTrue,
  });

  List<Widget> generateDots(int leftPercent, int rightPercent) {
    int totalDots = 5;
    int greenDots = (totalDots * (leftPercent / 100)).round();
    int redDots = totalDots - greenDots;

    return [
      ...List.generate(
        greenDots,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Color(0xff00FF57),
            shape: BoxShape.circle,
          ),
        ),
      ),
      ...List.generate(
        redDots,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Color(0xffFC7881),
            shape: BoxShape.circle,
          ),
        ),
      ),
    ];
  }

  List<Widget> generateColoredContainers(
    int centerPercent,
  ) {
    int totalContainers = 6;
    int greenCount = (totalContainers * (leftPercent / 100)).round();
    int redCount = totalContainers - greenCount;

    return [
      ...List.generate(
        greenCount,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Color(0xff00FF57),
            shape: BoxShape.circle,
          ),
        ),
      ),
      ...List.generate(
        redCount,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Color(0xffFC7881),
            shape: BoxShape.circle,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 7, right: 15, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xff1E282F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                teamLogo,
                width: 26,
                height: 26,
              ),
              const SizedBox(
                width: 10,
              ),
              if (scoreIsTrue)
                Container(
                  height: 19,
                  width: 26,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white)),
                  child: TextWidget(
                    text: score,
                    fontSize: 12,
                    color: const Color(0xff00FF57),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              const Spacer(),
              TextWidget(
                text: data,
                fontSize: 12,
                color: const Color(0xffBBBEC0),
                fontWeight: FontWeight.w500,
              ),
              const Spacer(),
              if (scoreIsTrue)
                Container(
                  height: 19,
                  width: 26,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white)),
                  child: TextWidget(
                    text: scoreTwo,
                    fontSize: 12,
                    color: const Color(0xff00FF57),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                teamLogoTwo,
                width: 26,
                height: 26,
              ),
            ],
          ),
          Row(
            children: [
              TextWidget(
                text: teamName,
                fontSize: 14,
                color: const Color(0xffFFFFFF),
                fontWeight: FontWeight.w700,
              ),
              const Spacer(),
              const TextWidget(
                text: 'Live',
                fontSize: 12,
                color: Color(0xff00FF57),
                fontWeight: FontWeight.w500,
              ),
              const Spacer(),
              TextWidget(
                text: teamNameTwo,
                fontSize: 14,
                color: const Color(0xffFFFFFF),
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: generateDots(leftPercent, rightPercent),
              ),
              const SizedBox(width: 5),
              TextWidget(
                text: '$leftPercent%',
                fontSize: 12,
                color: const Color(0xff00FF57),
                fontWeight: FontWeight.w700,
              ),
              const Spacer(),
              Container(
                height: 1,
                width: 45,
                color: const Color(0xffBBBEC0),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextWidget(
                  text: 'L5 H2H',
                  fontSize: 12,
                  color: Color(0xffBBBEC0),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 1,
                width: 45,
                color: const Color(0xffBBBEC0),
              ),
              const Spacer(),
              TextWidget(
                text: '$rightPercent%',
                fontSize: 12,
                color: const Color(0xffFC7881),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(width: 5),
              Row(
                children: generateDots(rightPercent, leftPercent),
              ),
            ],
          ),
          Container(
            height: 1,
            color: const Color(0xffFF7950),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              TextWidget(
                text: result,
                fontSize: 18,
                color: const Color(0xffFFFFFF),
                fontWeight: FontWeight.w700,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Image.asset(
                  resultLogo,
                  width: 22,
                ),
              ),
              Row(
                children: generateColoredContainers(centerPercent),
              ),
              const SizedBox(
                width: 5,
              ),
              TextWidget(
                text: '$centerPercent%',
                fontSize: 12,
                color: const Color(0xff00FF57),
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: TextWidget(
              text: overallResult,
              fontSize: 14,
              color: const Color(0xffFFFFFF),
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            children: [
              const Spacer(),
              const TextWidget(
                text: 'Predicted Winner',
                fontSize: 18,
                color: Color(0xff00FF57),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xff00FF57))),
                child: Image.asset(
                  matchWinner,
                  width: 22,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
