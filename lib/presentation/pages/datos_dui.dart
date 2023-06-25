import 'package:flutter/material.dart';
import 'package:proyecto_eleccion_electorales/presentation/screens/datos_dui_screen.dart';

class DatosDui extends StatelessWidget {
  const DatosDui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body:  Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          //padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: const Image(
                  image: AssetImage(
                      'lib/assets/images/Tse_logo.png'), // Ruta de la imagen desde los recursos locales
                  width: 100, // Ancho deseado de la imagen
                  height: 100, // Alto deseado de la imagen
                ),
              ),
              const DatosDuiScreen()           
            ],
          ),
        ),
    );
  }
}