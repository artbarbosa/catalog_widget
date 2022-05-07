import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({Key? key}) : super(key: key);

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    var nomeController = TextEditingController();
    var sobrenomeController = TextEditingController();
    var senhaController = TextEditingController();

    var formKey = GlobalKey<FormState>();
    @override
    void dispose() {
      nomeController.dispose();
      sobrenomeController.dispose();
      super.dispose();
    }

    return Form(
      key: formKey,
      child: Column(
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
                if (formKey.currentState?.validate() ?? false) {
                  debugPrint(
                      'Nome: ${nomeController.text} Sobrenome: ${sobrenomeController.text} ');
                }
              },
              child: const Text('Salvar'))
        ],
      ),
    );
  }
}
