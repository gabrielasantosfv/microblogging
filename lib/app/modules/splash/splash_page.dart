import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:microblogging/app/shared/components/text/text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigator();
    super.initState();
  }

  navigator() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        Modular.to.navigate('/login/');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffb1d5ed),
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          CircularProgressIndicator(color: Color(0xff3b5168)),
          SizedBox(height: 10),
          TextComponent(text: 'Desenvolvido por:', fontWeight: FontWeight.bold),
          TextComponent(
            text: 'Gabriela dos Santos Facundo Volpato',
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 10),
          TextComponent(text: 'Contato:', fontWeight: FontWeight.bold),
          TextComponent(
            text: 'gabrielasantosfv@gmail.com\n(85) 9 9749-1857',
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
