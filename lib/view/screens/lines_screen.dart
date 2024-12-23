import 'package:flutter/material.dart';
import '../components/match_card.dart';
import '../components/sports_slider.dart';
import '../components/text_widget.dart';
import '../components/tolgeter_widget.dart';
import '../utils/assets_path.dart';

class LinesScreen extends StatelessWidget {
  LinesScreen({super.key});

  final List<Map<String, String>> sports = [
    {"icon": "assets/images/cfl.png", "name": "CFL"},
    {"icon": "assets/images/mlb.png", "name": "MLB"},
    {"icon": "assets/images/nba.png", "name": "NBA"},
    {"icon": "assets/images/nfl.png", "name": "NFL"},
    {"icon": "assets/images/nhl.png", "name": "NHL"},
  ];

  final List<String> toggleOptions = ["Moneyline", "Spread", "Totals"];

  final List<Map<String, dynamic>> teamData = [
    {
      "teamLogo": AppIcons.yankees,
      "score": "3",
      "scoreTwo": "5",
      "teamLogoTwo": AppIcons.blueJays,
      "teamName": "Maple Leafs",
      "teamNameTwo": "Blue Jays",
      "data": "Today\n4:30PM",
      "winProbability": 60,
      "status": "Live",
      "leftPercent": 80,
      "rightPercent": 20,
      "centerPercent": 70,
      "result": 'NYY Moneyline (-105)',
      "resultLogo": AppIcons.rectangle,
      "overallResult":
          'The New York Yankees are 7-2 (77.8%) in their last\n9 home games.',
      "matchWinner": AppIcons.yankees,
      'scoreIsTrue': true,
    },
    {
      "teamLogo": AppIcons.brewers,
      "score": "",
      "scoreTwo": "",
      "teamLogoTwo": AppIcons.braves,
      "teamName": "Brewers",
      "teamNameTwo": "Braves",
      "data": "Today\n4:30PM",
      "winProbability": 60,
      "status": "Live",
      "leftPercent": 70,
      "rightPercent": 30,
      "centerPercent": 70,
      "result": 'MIL Moneyline (+108)',
      "resultLogo": AppIcons.draftKings,
      "overallResult":
          'The Milwaukee Brewers are 6-1 (85.7%) in their last\n7 road games.',
      "matchWinner": AppIcons.brewers,
      'scoreIsTrue': false,
    },
    {
      "teamLogo": AppIcons.mets,
      "score": "",
      "scoreTwo": "",
      "teamLogoTwo": AppIcons.phillies,
      "teamName": "Mets",
      "teamNameTwo": "Phillies",
      "data": "Today\n4:30PM",
      "winProbability": 60,
      "status": "Live",
      "leftPercent": 50,
      "rightPercent": 40,
      "centerPercent": 70,
      "result": 'NYM Moneyline (+120)',
      "resultLogo": AppIcons.fanatics,
      "overallResult":
          'The Milwaukee Brewers are 6-1 (85.7%) in their last\n7 road games.',
      "matchWinner": AppIcons.phillies,
      'scoreIsTrue': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SportsSlider(sports: sports),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  TextWidget(
                    text: 'AI Predictions',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFF7950),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextWidget(
                    text: '17 Games',
                    fontSize: 14,
                    color: Color(0xffFF7950),
                  )
                ],
              ),
            ),
            CustomToggleSwitch(
              options: toggleOptions,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: teamData.length,
                itemBuilder: (context, index) {
                  final data = teamData[index];
                  return Column(
                    children: [
                      TeamScoreWidget(
                          teamLogo: data['teamLogo'],
                          scoreTwo: data['scoreTwo'],
                          teamLogoTwo: data['teamLogoTwo'],
                          teamNameTwo: data['teamNameTwo'],
                          teamName: data['teamName'],
                          data: data['data'],
                          score: data['score'],
                          winProbability: data['winProbability'],
                          status: data['status'],
                          leftPercent: data['leftPercent'],
                          rightPercent: data['rightPercent'],
                          centerPercent: data['centerPercent'],
                          result: data['result'],
                          resultLogo: data['resultLogo'],
                          overallResult: data['overallResult'],
                          matchWinner: data['matchWinner'],
                          scoreIsTrue: data['scoreIsTrue']),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
