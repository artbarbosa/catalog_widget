import 'package:flutter/material.dart';

class ChoiceChipPage extends StatefulWidget {
  const ChoiceChipPage({Key? key}) : super(key: key);

  @override
  State<ChoiceChipPage> createState() => _ChoiceChipPageState();
}

class _ChoiceChipPageState extends State<ChoiceChipPage> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: List<Widget>.generate(
            3,
            (int index) {
              return ChoiceChip(
                label: Text('Item $index'),
                selected: _value == index,
                onSelected: (bool selected) {
                  setState(
                    () {
                      _value = selected ? index : null;
                    },
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
