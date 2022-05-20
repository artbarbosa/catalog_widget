import 'package:flutter/material.dart';

import 'date_picker/date_picker_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DatePickePage(),
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
