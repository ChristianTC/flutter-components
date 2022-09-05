import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Flutter components'),
        ),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.ac_unit_rounded),
          title: const Text('Route name'),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            // );
            // // Navigator.pushReplacement(context, route);
            // Navigator.push(context, route);
            Navigator.pushNamed(context, 'listView1');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
