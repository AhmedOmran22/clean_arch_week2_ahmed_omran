import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../cubits/filter_cubit.dart';
import 'filter_item_widget.dart';

class FilterItemListViewBuilder extends StatelessWidget {
  const FilterItemListViewBuilder({super.key, required this.filterItems});
  final List<String> filterItems;
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
          return BlocSelector<FilterCubit, int, bool>(
            selector: (selectedIndex) => selectedIndex == index,
            builder: (context, isSelected) {
              return InkWell(
                onTap: () => context.read<FilterCubit>().selectFilter(index),
                child: FilterItemWidget(
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
