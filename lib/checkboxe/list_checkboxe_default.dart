import 'package:flutter/material.dart';

class ListCheckboxesDefault extends StatefulWidget {
  const ListCheckboxesDefault({Key? key}) : super(key: key);

  @override
  State<ListCheckboxesDefault> createState() => _ListCheckboxesDefaultState();
}

class _ListCheckboxesDefaultState extends State<ListCheckboxesDefault> {
  List<bool> checked = [true, true, false, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        for (var i = 0; i < 5; i += 1)
          Row(
            children: [
              Checkbox(
                onChanged: i == 4
                    ? null
                    : (bool? value) {
                        setState(
                          () {
                            checked[i] = value!;
                          },
                        );
                      },
                tristate: i == 1,
                value: checked[i],
                activeColor: const Color(0xFF6200EE),
              ),
              Text(
                'Checkbox ${i + 1}',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: i == 4 ? Colors.black38 : Colors.black,
                    ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
      ],
    ));
  }
}
