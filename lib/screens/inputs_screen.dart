import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Christian',
                textCapitalization: TextCapitalization.words,
                cursorColor: Colors.yellow,
                onChanged: (value) {
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
