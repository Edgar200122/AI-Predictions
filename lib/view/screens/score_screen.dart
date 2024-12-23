import 'package:flutter/material.dart';
import '../components/bet_widget.dart';
import '../components/text_widget.dart';
import '../components/top_bar.dart';
import '../utils/assets_path.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});
  static const List<Map<String, dynamic>> data = [
    {
      'leftText': '+130',
      'rightText': '-130',
      'leftOutsideBloc': false,
      'rightOutsideBloc': false,
      'leftInsideBloc': false,
      'rightInsideBloc': false,
      'image': AppIcons.dazn,
    },
    {
      'leftText': '+30',
      'rightText': '-50',
      'leftOutsideBloc': false,
      'rightOutsideBloc': false,
      'leftInsideBloc': false,
      'rightInsideBloc': false,
      'image': AppIcons.eagl,
    },
    {
      'leftText': '+60',
      'rightText': '-130',
      'leftOutsideBloc': true,
      'rightOutsideBloc': false,
      'leftInsideBloc': false,
      'rightInsideBloc': false,
      'image': AppIcons.fanatics,
    },
    {
      'leftText': '+40',
      'rightText': '-200',
      'leftOutsideBloc': false,
      'rightOutsideBloc': false,
      'leftInsideBloc': false,
      'rightInsideBloc': false,
      'image': AppIcons.clutchBet,
    },
    {
      'leftText': '+30',
      'rightText': '-100',
      'leftOutsideBloc': false,
      'rightOutsideBloc': false,
      'leftInsideBloc': true,
      'rightInsideBloc': true,
      'image': AppIcons.firekeepers,
    },
    {
      'leftText': '+15',
      'rightText': '-70',
      'leftOutsideBloc': false,
      'rightOutsideBloc': false,
      'leftInsideBloc': false,
      'rightInsideBloc': false,
      'image': AppIcons.fliff,
    },
    {
      'leftText': '+130',
      'rightText': '-130',
      'leftOutsideBloc': true,
      'rightOutsideBloc': false,
      'leftInsideBloc': false,
      'rightInsideBloc': false,
      'image': AppIcons.ladbrokes,
    },
    {
      'leftText': '+130',
      'rightText': '-130',
      'leftOutsideBloc': false,
      'rightOutsideBloc': false,
      'leftInsideBloc': true,
      'rightInsideBloc': true,
      'image': AppIcons.ladbrokes,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF161519),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 10,
          left: 5,
          right: 5,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF1e2830),
                Color(0xFF161518),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0,
                0.2,
              ],
            ),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                    ),
                    child: TopBar(
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 15,
                      bottom: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image 12.png',
                              width: 40,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const TextWidget(
                              text: 'Brewers',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              TextWidget(
                                text: 'Today',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffbababc),
                              ),
                              TextWidget(
                                text: '4:30PM',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffbababc),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/braves_icon.png',
                              width: 40,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const TextWidget(
                              text: 'Braves',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Group 1402.png',
                                width: 80,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const TextWidget(
                                text: '30%',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFC7881),
                              ),
                            ],
                          ),
                        ),
                        const TextWidget(
                          text: 'H2H',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffbababc),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const TextWidget(
                                text: '70%',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff00FF57),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Image.asset(
                                'assets/images/Group 1403.png',
                                width: 80,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: ListView.builder(
                      shrinkWrap: false,
                      itemCount: ScoreScreen.data.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return BetWidget(
                          leftBetOutside: ScoreScreen.data[index]
                              ['leftOutsideBloc'],
                          rightBetOutside: ScoreScreen.data[index]
                              ['rightOutsideBloc'],
                          leftBetBlocInside: ScoreScreen.data[index]
                              ['leftInsideBloc'],
                          rightBetBlocInside: ScoreScreen.data[index]
                              ['rightInsideBloc'],
                          iconText: ScoreScreen.data[index]['image'],
                          leftText: ScoreScreen.data[index]['leftText'],
                          rightText: ScoreScreen.data[index]['rightText'],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
