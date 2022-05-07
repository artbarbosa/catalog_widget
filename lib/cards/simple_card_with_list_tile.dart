import 'package:flutter/material.dart';

class SimpleCardWithListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const SimpleCardWithListTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: currentWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            alignment: Alignment.center,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 30,
              ),
              title: Text(title),
              subtitle: Text(subtitle),
              trailing: const Icon(
                Icons.camera_alt_outlined,
                size: 27,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
