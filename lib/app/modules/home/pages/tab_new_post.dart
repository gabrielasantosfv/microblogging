import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/button/button.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_area.dart';

class TabNewPostPage extends StatefulWidget {
  const TabNewPostPage({Key? key}) : super(key: key);

  @override
  State<TabNewPostPage> createState() => _TabNewPostPageState();
}

class _TabNewPostPageState extends State<TabNewPostPage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Compartilhar publicação')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
             /*  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.blue[50],
                    backgroundImage: const NetworkImage(
                      'https://img.freepik.com/fotos-gratis/estilo-de-vida-beleza-e-moda-conceito-de-emocoes-de-pessoas-jovem-gerente-de-escritorio-feminino-asiatico-ceo-com-expressao-satisfeita-em-pe-sobre-um-fundo-branco-sorrindo-com-os-bracos-cruzados-sobre-o-peito_1258-59329.jpg?w=2000',
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Flexible(
                    child: TextComponent(
                      text: 'Gabi Santos',
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10), */
              TextFieldAreaComponent(
                controller: textController,
                hintText: "No que você está pensando?",
              ),
              const SizedBox(height: 20),
              const ButtonComponent(text: 'Publicar', inProgress: false),
            ],
          ),
        ),
      ),
    );
  }
}
