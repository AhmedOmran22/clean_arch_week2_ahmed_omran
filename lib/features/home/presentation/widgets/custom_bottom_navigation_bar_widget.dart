import 'package:clean_arch_week2_ahmed_omran/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/models/bottom_navigation_bar_item_model.dart';
import 'bottom_navigation_bar_item_widget.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  const CustomBottomNavigationBarWidget({
    super.key,
    required this.onItemTapped,
  });
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavigationBarWidget> createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  int selectedIndex = 0;
  final List<BottomNavigationBarItemModel> bottomNavigationBarItems = [
    BottomNavigationBarItemModel(svgImage: AppAssets.imagesHome, title: "Home"),
    BottomNavigationBarItemModel(
      svgImage: AppAssets.imagesFilter,
      title: "Filter",
    ),
    BottomNavigationBarItemModel(
      svgImage: AppAssets.imagesSearch,
      title: "Search",
    ),
    BottomNavigationBarItemModel(
      svgImage: AppAssets.imagesWorld,
      title: "World",
    ),
    BottomNavigationBarItemModel(
      svgImage: AppAssets.imagesSettings,
      title: "Settings",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      option: BubbleBarOptions(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
        barStyle: BubbleBarStyle.horizontal,
        bubbleFillStyle: BubbleFillStyle.fill,
      ),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      items: List.generate(bottomNavigationBarItems.length, (index) {
        return BottomBarItem(
          backgroundColor: AppColors.primaryColor,
          icon: BottomNavigationBarItemWidget(
            svgImage: bottomNavigationBarItems[index].svgImage,
            color: Colors.grey,
          ),
          selectedIcon: BottomNavigationBarItemWidget(
            svgImage: bottomNavigationBarItems[index].svgImage,
            color: Colors.white,
          ),
          selectedColor: Colors.white,
          title: Text(
            bottomNavigationBarItems[index].title,
            style: const TextStyle(color: Colors.white),
          ),
        );
      }),
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
          widget.onItemTapped(index);
        });
      },
      elevation: 8,
    );
  }
}
