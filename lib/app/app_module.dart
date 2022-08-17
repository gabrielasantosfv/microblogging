import 'package:flutter_modular/flutter_modular.dart';

import 'modules/create_account/create_account_module.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/new_post/new_post_module.dart';
import 'modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const SplashPage()),
        ModuleRoute("/login", module: LoginModule()),
        ModuleRoute("/home", module: HomeModule()),
        ModuleRoute("/create_account", module: CreateAccountModule()),
        ModuleRoute("/new_post", module: NewPostModule()),
      ];
}
