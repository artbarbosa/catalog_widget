import 'package:flutter/material.dart';

class DialogManager {
  void show(BuildContext context) {
    showDialog(
        context: context,
        builder: (_context) {
          return AlertDialog(
            title: const Text('title'),
            content: const Text('Content'),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(_context).pop();
                  },
                  child: const Text('close'))
            ],
          );
        });
  }
}
