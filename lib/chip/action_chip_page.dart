import 'package:flutter/material.dart';

class ActionChipPage extends StatelessWidget {
  const ActionChipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ActionChip(
              avatar: const Icon(Icons.favorite),
              label: const Text('Action 1'),
              onPressed: () {},
            ),
            ActionChip(
              avatar: const Icon(Icons.delete),
              label: const Text('Action 2'),
              onPressed: () {},
            ),
            ActionChip(
              avatar: const Icon(Icons.alarm),
              label: const Text('Action 3'),
              onPressed: () {},
            ),
            ActionChip(
              avatar: const Icon(Icons.location_on),
              label: const Text('Action 4'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
