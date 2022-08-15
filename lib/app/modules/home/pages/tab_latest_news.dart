import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/card/card.dart';

class TabLatestNewsPage extends StatefulWidget {
  const TabLatestNewsPage({Key? key}) : super(key: key);

  @override
  State<TabLatestNewsPage> createState() => _TabLatestNewsPageState();
}

class _TabLatestNewsPageState extends State<TabLatestNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Novidades')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return const CardComponent(
            name: 'O Boticário',
            date: '14/08/2022',
            image:
                'https://gb-mobile-app-teste.s3.amazonaws.com/oboticario.png',
            text:
                'Além disso, nossos funcionários e familiares receberão kits de proteção. Afinal, o cuidado começa aqui dentro, né?',
            numberLikes: 67,
            numberComments: 15,
            verified: true,
          );
        },
      ),
    );
  }
}
