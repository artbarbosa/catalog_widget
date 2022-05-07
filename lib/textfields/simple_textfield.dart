import 'package:flutter/material.dart';

class SimpleTextField extends StatefulWidget {
  const SimpleTextField({Key? key}) : super(key: key);

  @override
  State<SimpleTextField> createState() => _SimpleTextFieldState();
}

class _SimpleTextFieldState extends State<SimpleTextField> {
  @override
  Widget build(BuildContext context) {
    var nomeController = TextEditingController();
    var sobrenomeController = TextEditingController();

    @override
    void dispose() {
      nomeController.dispose();
      sobrenomeController.dispose();
      super.dispose();
    }

    return Column(
      children: [
        TextField(
          controller: nomeController,
          decoration: const InputDecoration(
            labelText: 'Nome',
          ),
        ),
        TextField(
          controller: sobrenomeController,
          decoration: const InputDecoration(
            labelText: 'Sobrenome',
          ),
        ),
        ElevatedButton(
            onPressed: () {
              debugPrint(
                  'Nome: ${nomeController.text} Sobrenome: ${sobrenomeController.text} ');
            },
            child: const Text('Salvar'))
      ],
    );
  }
}
