import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewModel/providers/home_provider.dart';
import '../utils/assets_path.dart';
import 'text_widget.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    final activePageIndex = homeProvider.activePageIndex;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 91,
      decoration: const BoxDecoration(
        color:Color(0xff161519),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarButton(
            onSelect: () {
              homeProvider.changePage(0);
            },
            icon: AppIcons.linesIcon,
            label: "Lines",
            isActive: activePageIndex == 0 || activePageIndex == 5,
          ),
          BottomBarButton(
            onSelect: () {
              homeProvider.changePage(1);
            },
            icon: AppIcons.propsWhite,
            label: "Props",
            isActive: activePageIndex == 1,
          ),
          BottomBarButton(
            onSelect: () {
              homeProvider.changePage(2);
            },
            icon: AppIcons.surebetWihte,
            label: "SureBet",
            isActive: activePageIndex == 2,
          ),
          BottomBarButton(
            onSelect: () {
              homeProvider.changePage(3);
            },
            icon: AppIcons.evPlus,
            label: "EV+",
            isActive: activePageIndex == 3,
          ),
          BottomBarButton(
            onSelect: () {
              homeProvider.changePage(4);
            },
            icon: AppIcons.betsIcon,
            label: "Bets",
            isActive: activePageIndex == 4,
          ),
        ],
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onSelect,
  });

  final String icon;
  final String label;
  final bool isActive;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            color: isActive ? const Color(0xffFF7950) : const Color(0xff8A8A8C),
            width: 32,
          ),
          TextWidget(
            text: label,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: isActive ?const Color(0xffFF7950) :const Color(0xff8A8A8C),
          ),
        ],
      ),
    );
  }
}
