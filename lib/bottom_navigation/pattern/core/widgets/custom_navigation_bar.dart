import 'package:flutter/material.dart';

import 'controller/custom_navigation_bar_controller.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key, required this.controller})
      : super(key: key);

  final CustomNavigationBarController controller;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final controllerbar = CustomNavigationBarController(0);

  @override
  Widget build(BuildContext context) {
    // return BottomNavigationBar(
    //   currentIndex: widget.controller.selectedIndex,
    //   onTap: (value) {
    //     widget.controller.changePage(value);
    //   },
    //   items: const [
    //     BottomNavigationBarItem(
    //       label: 'Home',
    //       icon: Icon(Icons.home),
    //     ),
    //     BottomNavigationBarItem(
    //       label: 'Cart',
    //       icon: Icon(Icons.shopping_cart),
    //     ),
    //     BottomNavigationBarItem(
    //       label: 'Settings',
    //       icon: Icon(Icons.settings),
    //     ),
    //   ],
    // );

    return NavigationBar(
      selectedIndex: widget.controller.selectedIndex,
      onDestinationSelected: (value) {
        widget.controller.changePage(value);
      },
      destinations: const [
        NavigationDestination(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        NavigationDestination(
          label: 'Cart',
          icon: Icon(Icons.shopping_cart),
        ),
        NavigationDestination(
          label: 'Settings',
          icon: Icon(Icons.settings),
        )
      ],
    );
  }
}
