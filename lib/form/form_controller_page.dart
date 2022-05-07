import 'package:flutter/material.dart';

class FormControllerPage extends StatelessWidget {
  FormControllerPage({Key? key}) : super(key: key);

  var nomeController = TextEditingController(text: '');
  var formKey = GlobalKey<FormState>();
  var nome = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nomeController,
            onSaved: (text) {
              nome = nomeController.text;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (text) {
              if (text == null || text.contains('@')) {
                return 'Nome Invalido';
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  formKey.currentState?.save();
                  debugPrint('Nome: $nome Sobrenome: ');
                }
              },
              child: const Text('Salvar'))
        ],
      ),
    );
  }
}
