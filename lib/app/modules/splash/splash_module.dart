import 'package:flutter_modular/flutter_modular.dart';

import 'splash_page.dart';

class SpashModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const SplashPage()),
      ];
}
