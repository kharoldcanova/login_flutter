import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter/data/login_firebase.dart';
import 'package:login_flutter/repository/login_repository.dart';
import 'package:login_flutter/screens/login_screen.dart';
import 'package:login_flutter/theme/themes.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        Provider<AuthRepository>(create: (_) => AuthFirebase()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: customTheme,
        home: const Home(),
      ),
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
                    "Sean bienvenidos a este login personalizado creado en Flutter",
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
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => LoginScreen.init()));
                  },
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
