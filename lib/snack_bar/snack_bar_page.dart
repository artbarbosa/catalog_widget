import 'package:catalog_widget/snack_bar/snack_bar_maneger.dart';
import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.text_increase),
        onPressed: () {
          SnackBarManeger().showError(context, 'Ocorreu um error Sla');

          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(
          //     content: Text('Aconteceu Algum Error'),
          //   ),
        },
      ),
    );
  }
}
