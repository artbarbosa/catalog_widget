import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);
  var nome = '';
  var email = '';
  var senha = '';
  // padrão
  var passwordCached = '';
  var passwordConfirmCached = '';

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          // Name
          TextFormField(
            onSaved: (text) => nome = text!,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Nome Invalido';
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text('Name'),
              hintText: 'Type your name',
            ),
          ),
          // Senha
          TextFormField(
            onChanged: (text) => passwordCached = text,
            onSaved: (text) => nome = text!,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Senha Invalido';
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text('Senha'),
              hintText: 'Type your password',
            ),
          ),
          // Confirm Senha
          TextFormField(
            onSaved: (text) => nome = text!,
            onChanged: (text) => passwordConfirmCached = text,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Is not Empty';
              }
              if (passwordConfirmCached != passwordCached) {
                return 'Password DIff';
              }
              return null;
            },
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('Confirm Password'),
              hintText: 'Type your confirm Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
