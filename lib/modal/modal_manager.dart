import 'package:flutter/material.dart';

class DialogManager {
  void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
          ),
        ),
        builder: (_context) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 100,
                  child: Text('Sla Alguma parada'),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('Accept'),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromWidth(double.infinity)))),
                OutlinedButton(onPressed: () {}, child: const Text('Cancel')),
              ],
            ),
          );
        });
  }
}
