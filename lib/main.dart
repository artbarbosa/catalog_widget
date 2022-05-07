import 'package:catalog_widget/snack_bar/snack_bar_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SnackBarPage(),
      // Scaffold(
      //   backgroundColor: Colors.blueGrey.shade200,
      //   appBar: AppBar(
      //     title: const Text('Catalog Widgets'),
      //   ),
      //   body: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children:  [
      //       FormControllerPage(),
      //     ],
      //   ),
      //),
    );
  }
}
