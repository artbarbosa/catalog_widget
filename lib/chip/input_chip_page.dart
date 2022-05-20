import 'package:flutter/material.dart';

class InputChipPage extends StatelessWidget {
  const InputChipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InputChip(
              avatar: const Icon(Icons.remove),
              label: const Text('Input 1'),
              onSelected: (bool value) {},
            ),
            InputChip(
              avatar: const Icon(Icons.remove),
              label: const Text('Input 2'),
              onSelected: (bool value) {},
            ),
            InputChip(
              avatar: const Icon(Icons.remove),
              label: const Text('Input 3'),
              onSelected: (bool value) {},
            ),
          ],
        ),
      ),
    );
  }
}
