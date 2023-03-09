import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.network(
              "https://freesvg.org/img/Gerald_G_Simple_Fruit_(FF_Menu)_4.png",
              alignment: Alignment.bottomLeft,
              scale: 3,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                Expanded(
                  child: Text(
                    "Convierte a tus clientes en fanaticos de tu marca con esta solucion CRM personalizada.",
                    style: Theme.of(context).textTheme.bodyLarge,
                    softWrap: true,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Saltar"),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text("Siguiente"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
