import 'package:flutter/material.dart';
import '../../view/screens/bets_screen.dart';
import '../../view/screens/ev_plus_screen.dart';
import '../../view/screens/lines_screen.dart';
import '../../view/screens/score_screen.dart';
import '../../view/screens/sure_bet_screen.dart';

class HomeProvider extends ChangeNotifier {
  static final List<Widget> pages = [
    LinesScreen(),
    const ScoreScreen(),
    const SureBetScreen(),
    const EvPlusScreen(),
    const BetsScreen(),
  ];
  static HomeProvider? homeProvider;
  int _activePageIndex = 0;

  int get activePageIndex => _activePageIndex;

  void changePage(int pageIndex) {
    _activePageIndex = pageIndex;
    notifyListeners();
  }
}
