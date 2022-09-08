import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const CustomCardType2({Key? key, required this.imageUrl, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('lib/assets/jar-loading.gif'),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Text(description ?? 'Do not have a title'),
        )
      ]),
    );
  }
}
