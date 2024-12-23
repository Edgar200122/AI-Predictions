class Sport {
  final String icon;
  final String name;

  Sport({required this.icon, required this.name});

  factory Sport.fromJson(Map<String, String> json) {
    return Sport(
      icon: json['icon']!,
      name: json['name']!,
    );
  }
}

class ToggleOption {
  final String option;

  ToggleOption({required this.option});
}

class TeamData {
  final String teamLogo;
  final String score;
  final String scoreTwo;
  final String teamLogoTwo;
  final String teamName;
  final String teamNameTwo;
  final String data;
  final int winProbability;
  final String status;
  final int leftPercent;
  final int rightPercent;
  final int centerPercent;
  final String result;
  final String resultLogo;
  final String overallResult;
  final String matchWinner;

  TeamData({
    required this.teamLogo,
    required this.score,
    required this.scoreTwo,
    required this.teamLogoTwo,
    required this.teamName,
    required this.teamNameTwo,
    required this.data,
    required this.winProbability,
    required this.status,
    required this.leftPercent,
    required this.rightPercent,
    required this.centerPercent,
    required this.result,
    required this.resultLogo,
    required this.overallResult,
    required this.matchWinner,
  });

  factory TeamData.fromJson(Map<String, dynamic> json) {
    return TeamData(
      teamLogo: json['teamLogo'],
      score: json['score'],
      scoreTwo: json['scoreTwo'],
      teamLogoTwo: json['teamLogoTwo'],
      teamName: json['teamName'],
      teamNameTwo: json['teamNameTwo'],
      data: json['data'],
      winProbability: json['winProbability'],
      status: json['status'],
      leftPercent: json['leftPercent'],
      rightPercent: json['rightPercent'],
      centerPercent: json['centerPercent'],
      result: json['result'],
      resultLogo: json['resultLogo'],
      overallResult: json['overallResult'],
      matchWinner: json['matchWinner'],
    );
  }
}
