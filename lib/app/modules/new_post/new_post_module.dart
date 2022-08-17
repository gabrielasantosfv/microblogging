import 'package:flutter_modular/flutter_modular.dart';

import 'new_post_page.dart';

class NewPostModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const NewPostPage()),
      ];
}
