import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/card/card.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({Key? key}) : super(key: key);

  @override
  State<TabHomePage> createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Início')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return const CardComponent(
            name: 'Gabi Santos',
            date: '14/08/2022',
            image:
                'https://img.freepik.com/fotos-gratis/estilo-de-vida-beleza-e-moda-conceito-de-emocoes-de-pessoas-jovem-gerente-de-escritorio-feminino-asiatico-ceo-com-expressao-satisfeita-em-pe-sobre-um-fundo-branco-sorrindo-com-os-bracos-cruzados-sobre-o-peito_1258-59329.jpg?w=2000',
            text:
                'Lorem ipsum dolor sit amet consectetur adipiscing, elit ante sociosqu fames lectus efficitur per, diam molestie volutpat phasellus feugiat. Pellentesque augue sagittis mauris netus tempor sociosqu fusce adipiscing pulvinar senectus lectus cursus.',
            numberLikes: 67,
            numberComments: 15,
            verified: false,
          );
        },
      ),
    );
  }
}
