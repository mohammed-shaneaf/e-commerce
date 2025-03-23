import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  State<CustomButtomNavigationBar> createState() => _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Responsive width
      height: 70,
      decoration: _buildDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: getBottomNavigationBarItems(context)
            .asMap()
            .entries
            .map((entry) => GestureDetector(
                  onTap: () => setState(() => selectedIndex = entry.key),
                  child: NavigationBarItem(
                    isSelected: entry.key == selectedIndex,
                    bottomNavigationBarEntity: entry.value,
                  ),
                ))
            .toList(),
      ),
    );
  }

  ShapeDecoration _buildDecoration() {
    return const ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 25,
          offset: Offset(0, -2),
          spreadRadius: 0,
        ),
      ],
    );
  }
}
