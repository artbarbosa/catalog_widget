import 'package:flutter/material.dart';

class ToogleButton extends StatefulWidget {
  const ToogleButton({Key? key}) : super(key: key);

  @override
  State<ToogleButton> createState() => _ToogleButtonState();
}

class _ToogleButtonState extends State<ToogleButton> {
  final isSelected = <bool>[false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ToggleButtons(
        color: Colors.black.withOpacity(0.60),
        selectedColor: const Color(0xFF6200EE),
        selectedBorderColor: const Color(0xFF6200EE),
        fillColor: const Color(0xFF6200EE).withOpacity(0.08),
        splashColor: const Color(0xFF6200EE).withOpacity(0.12),
        hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
        borderRadius: BorderRadius.circular(4.0),
        constraints: const BoxConstraints(minHeight: 36.0),
        isSelected: isSelected,
        onPressed: (index) {
          // Respond to button selection
          setState(() {
            // apenas 1 botão
            for (int buttonIndex = 0;
                buttonIndex < isSelected.length;
                buttonIndex++) {
              if (buttonIndex == index) {
                isSelected[buttonIndex] = true;
                // deixa exclusiva a seleção
                // isSelected[buttonIndex] = !isSelected[buttonIndex];
              } else {
                isSelected[buttonIndex] = false;
              }
            }

            // Multiplas escolhas
            // int count = 0;
            // isSelected.forEach((bool val) {
            //   if (val) count++;
            // });

            // if (isSelected[index] && count < 2) return;

            // setState(() {
            //   isSelected[index] = !isSelected[index];
            // });

            // varios butões
            // isSelected[index] = !isSelected[index];
          });
        },
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('BUTTON 1'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('BUTTON 2'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('BUTTON 3'),
          ),
        ],
      ),
    ));
  }
}
