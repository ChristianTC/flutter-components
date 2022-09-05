import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Goku', 'Vegeta', 'Gohan', 'Trunks', 'Goten'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Type 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((character) => ListTile(
                      title: Text(character),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
