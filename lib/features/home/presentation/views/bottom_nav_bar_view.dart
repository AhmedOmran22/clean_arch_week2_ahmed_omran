import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigation_bar_widget.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("🏠 Home", style: TextStyle(fontSize: 24))),
    Center(child: Text("🔍 Search", style: TextStyle(fontSize: 24))),
    Center(child: Text("❤️ Likes", style: TextStyle(fontSize: 24))),
    Center(child: Text("👤 Profile", style: TextStyle(fontSize: 24))),
    Center(child: Text("⚙️ Settings", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBarWidget(
        onItemTapped: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
