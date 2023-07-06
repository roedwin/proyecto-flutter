import 'package:flutter/material.dart';
import 'package:proyecto_eleccion_electorales/config/theme/app_theme.dart';
import 'package:proyecto_eleccion_electorales/presentation/pages/datos_dui.dart';
import 'package:proyecto_eleccion_electorales/presentation/pages/verificar_dui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/verificar': (context) => const VerificarDui(),
        '/datos': (context) => const DatosDui(),

      },
      title: 'Formulario Flutter',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: const VerificarDui(),
    );
  }
}
