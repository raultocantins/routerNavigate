import 'package:flutter/material.dart';

import 'config/routers.dart';
import 'screens/config.screen.dart';
import 'screens/home.screen.dart';
import 'screens/perfil.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        Routers().routers['home']: (context) => const MyHomePage(
              title: '',
            ),
        Routers().routers['perfil']: (context) => const PerfilScreen(),
        Routers().routers['config']: (context) => const ConfigScreen(),
      },
    );
  }
}
