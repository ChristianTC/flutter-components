import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.phone, color: AppTheme.primary),
            title: Text('I am a title'),
            subtitle: Text(
                'Cillum non aliquip do amet dolore. Enim pariatur est labore dolore labore anim. Dolor nisi voluptate ad duis velit exercitation reprehenderit sunt officia pariatur. Et ex nulla enim proident irure irure culpa exercitation qui. Proident sunt voluptate nisi officia excepteur ut labore mollit quis dolore.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
