import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'filter_item_widget.dart';

class FilterItemListViewBuilder extends StatelessWidget {
  const FilterItemListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3.2.h,
      width: 100.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const FilterItemWidget();
        },
      ),
    );
  }
}
