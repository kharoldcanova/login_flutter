import 'package:flutter/material.dart';
import 'package:login_flutter/providers/login_provider.dart';
import 'package:login_flutter/repository/login_repository.dart';
import 'package:login_flutter/screens/home_screen.dart';
import 'package:login_flutter/theme/colors.dart';
import 'package:login_flutter/utils/inputs_box.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen._();

  static Widget init() => ChangeNotifierProvider(
        create: (context) => AuthProvider(
          authRepository: context.read<AuthRepository>(),
        ),
        child: const LoginScreen._(),
      );
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPressed = false;
  final _controlllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  void sendToLogin(context, email, password) async {
    await context.read<AuthProvider>().signIn(
          email: email,
          password: password,
        );
  }

  void showSnackBar(message, failed) {
    final snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    if (failed == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Iniciar Sesion",
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),

                    InputBoxes(
                      label: "Ingresa tu correo electronico:",
                      placeholder: "alguien@example.com",
                      isPassword: false,
                      keyboard: TextInputType.emailAddress,
                      controller: _controlllerEmail,
                    ),
                    InputBoxes(
                      label: "Ingresa tu contraseña:",
                      placeholder: "Contraseña",
                      isPassword: true,
                      keyboard: TextInputType.visiblePassword,
                      controller: _controllerPassword,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    //botton animated
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      child: SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor: _isPressed
                                  ? const MaterialStatePropertyAll(
                                      CustomColors.whitePalette)
                                  : const MaterialStatePropertyAll(
                                      CustomColors.blueColor),
                              foregroundColor: _isPressed
                                  ? const MaterialStatePropertyAll(
                                      CustomColors.blueColor)
                                  : const MaterialStatePropertyAll(
                                      CustomColors.whitePalette)),
                          onPressed: () async {
                            final email = _controlllerEmail.text;
                            final password = _controllerPassword.text;
                            try {
                              await context
                                  .read<AuthProvider>()
                                  .signIn(email: email, password: password);
                              showSnackBar(
                                  "Usuario autenticado con exito", false);
                            } catch (e) {
                              showSnackBar(
                                  "Problemas para iniciar sesion. Intente nuevamente",
                                  true);
                            }
                            setState(() {
                              _isPressed = true;
                            });

                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Do something with the username and password
                            }
                          },
                          child: const Text("Ingresar"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
