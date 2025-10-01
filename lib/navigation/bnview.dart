import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/screens/cart/cart_screen.dart';
import 'package:diet_esports/screens/diet_screen.dart';
import 'package:diet_esports/screens/gym_screen.dart';
import 'package:diet_esports/screens/note_screen.dart';
import 'package:diet_esports/screens/pc_screen.dart';
import 'package:diet_esports/screens/walk_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  final List<Color> colors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  final List<Widget> _pages = [
    const GymScreen(),
    const PcScreen(),
    const WalkScreen(),
    const NoteScreen(),
    const DietCartScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _pages.length, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _currentIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color activeColor = colors[_currentIndex];
    final Color inactiveColor = activeColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.black;

    // Icon list (same length as _pages)
    final List<String> icons = [
      Images.gym_ic,
      Images.C_ic,
      Images.walk_ic,
      Images.note_ic,
      Images.diet_ic,

    ];

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        decoration: BoxDecoration(
          color: activeColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_pages.length, (index) {
            return GestureDetector(
              onTap: () {
                _tabController.animateTo(index);
                setState(() {
                  _currentIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? inactiveColor.withOpacity(0.2)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF4B701),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  height: 44,
                  width: 44,
                  child: Image.asset(
                    icons[index],
                    color: _currentIndex == index
                        ? inactiveColor
                        : inactiveColor.withOpacity(0.5),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
