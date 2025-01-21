import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/username_model.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: userNameController,
            decoration: const InputDecoration(
              labelText: 'Enter your name',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Instruction 4: When the button on the login page is pressed, we're going to submit the name to the global state.
              // We need to get the UsernameModel (using Provider.of) and set the value to the text field (text) inside userNameController
              // Clear the text field
              userNameController.clear();
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
