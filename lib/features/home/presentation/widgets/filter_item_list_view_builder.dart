import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'filter_item_widget.dart';

class FilterItemListViewBuilder extends StatefulWidget {
  const FilterItemListViewBuilder({super.key});

  @override
  State<FilterItemListViewBuilder> createState() =>
      _FilterItemListViewBuilderState();
}

class _FilterItemListViewBuilderState extends State<FilterItemListViewBuilder> {
  int selectedIndex = 0;
  List<String> filterItems = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Top Rated",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3.2.h,
      width: 95.w,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: filterItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: FilterItemWidget(
              title: filterItems[index],
              isSelected: index == selectedIndex,
            ),
          );
        },
      ),
    );
  }
}
