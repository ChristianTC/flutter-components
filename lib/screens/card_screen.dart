import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.phone, color: AppTheme.primary),
                    title: Text('I am a title'),
                    subtitle: Text(
                        'Cillum non aliquip do amet dolore. Enim pariatur est labore dolore labore anim. Dolor nisi voluptate ad duis velit exercitation reprehenderit sunt officia pariatur. Et ex nulla enim proident irure irure culpa exercitation qui. Proident sunt voluptate nisi officia excepteur ut labore mollit quis dolore.'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
