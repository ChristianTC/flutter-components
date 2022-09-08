import 'package:fl_components/widgets/widgets.dart';
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
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://www.fayerwayer.com/resizer/5ttEUNkOhckxSflC4GJcO479VXc=/arc-photo-metroworldnews/arc2-prod/public/W6A3BTRSWBEYVDVFD4ZBO57RZE.jpg',
                description: 'Lorem elit duis occaecat cillum ut.'),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl: 'https://img2.rtve.es/i/?w=1600&i=1657019155649.jpg',
              description:
                  'Fugiat voluptate proident pariatur anim ea voluptate ut est ad nisi.',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://as01.epimg.net/meristation/imagenes/2022/08/24/noticias/1661328674_157916_1661328877_noticia_normal.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://cl.buscafs.com/www.levelup.com/public/uploads/images/756787/756787.jpg',
                description:
                    'Dolor consectetur qui culpa commodo in cillum ad laboris et.'),
          ],
        ));
  }
}
