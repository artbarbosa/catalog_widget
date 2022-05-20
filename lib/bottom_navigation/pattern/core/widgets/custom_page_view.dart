import 'package:flutter/material.dart';

import '../../home_page.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key, required this.controller}) : super(key: key);
  final PageController controller;
  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const ScrollPhysics(),
      controller: widget.controller,
      children: const [
        HomePage(title: 'home'),
        HomePage(title: 'person'),
        HomePage(title: 'Settings'),
      ],
    );
  }
}
