import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'filter_value_item_widget.dart';

class FilterValueListViewBuilder extends StatelessWidget {
  const FilterValueListViewBuilder({
    super.key,
    required this.selectedIndexNotifier,
  });

  final ValueNotifier<int> selectedIndexNotifier;

  final List<String> filterItems = const [
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
          return ValueListenableBuilder<int>(
            valueListenable: selectedIndexNotifier,
            builder: (context, selectedIndex, _) {
              final isSelected = selectedIndex == index;
              return InkWell(
                onTap: () => selectedIndexNotifier.value = index,
                child: FilterValueItemWidget(
                  title: filterItems[index],
                  isSelected: isSelected,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
