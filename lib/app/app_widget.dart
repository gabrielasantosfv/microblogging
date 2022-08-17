import 'package:flutter/material.dart';

import 'modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Colors.blue[50],
        appBarTheme: const AppBarTheme(color: Color(0xff3b5168)),
      ),
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
