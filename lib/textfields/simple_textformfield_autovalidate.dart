import 'package:flutter/material.dart';

class SimpleTextFieldAutoValidate extends StatefulWidget {
  const SimpleTextFieldAutoValidate({Key? key}) : super(key: key);

  @override
  State<SimpleTextFieldAutoValidate> createState() =>
      _SimpleTextFieldAutoValidateState();
}

class _SimpleTextFieldAutoValidateState
    extends State<SimpleTextFieldAutoValidate> {
  @override
  Widget build(BuildContext context) {
    var nomeController = TextEditingController();
    var sobrenomeController = TextEditingController();
    var senhaController = TextEditingController();

    @override
    void dispose() {
      nomeController.dispose();
      sobrenomeController.dispose();
      super.dispose();
    }

    return Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value == null || value.contains(' ')) {
              return 'Nome Invalido';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.always,
          controller: nomeController,
          decoration: const InputDecoration(
            labelText: 'Nome',
          ),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.contains('@')) {
              return 'Nome Invalido';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.always,
          controller: sobrenomeController,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        TextFormField(
          controller: senhaController,
          decoration: const InputDecoration(
            labelText: 'Senha',
          ),
          obscureText: true,
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
