import 'package:flutter/material.dart';
import 'package:router_navigator/config/routers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/perfil');
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.red),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Text(
                      "Ir para perfil",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/config');
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Text(
                      "Ir para Configurações",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
