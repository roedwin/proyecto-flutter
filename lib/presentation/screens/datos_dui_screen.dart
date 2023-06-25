import 'package:flutter/material.dart';
import 'package:proyecto_eleccion_electorales/presentation/widgets/input.dart';

class DatosDuiScreen extends StatelessWidget {
  const DatosDuiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        width: double.infinity,
        color: Colors.blue, // Establece el color de fondo azul
        padding:
            const EdgeInsets.all(16.0), // Espacio interno alrededor del texto
        child: const Text(
          'VERIFICA TUS DATOS ELECTORALES',
          style: TextStyle(
            color: Colors.white, // Establece el color del texto en blanco
            fontSize: 24.0, // Tamaño de fuente del texto
          ),
        ),
      ),
      const SizedBox(height: 5,),
      const Input(texto: 'DUI', dato: '04613714-6'),
      const Input(texto: 'NOMBRE', dato: '-------------------'),
      const Input(texto: 'DEPARTAMENTO', dato: '-------------------'),
      const Input(texto: 'MUNICIPIO', dato: '-------------------'),
      const Input(texto: 'CENTRO DE VOTACION', dato: '-------------------'),
      const Input(texto: 'DIRECCION', dato: '-------------------'),
      const Input(texto: 'JRV', dato: '-------------------'),
      const Input(texto: 'CORRELATIVO', dato: '-------------------'),
      
      const SizedBox(height: 5.0),
      Container(
        width: double.infinity, // Ocupa todo el ancho de la pantalla
        color: Colors.white, // Establece el color de fondo gris
        padding: const EdgeInsets.all(
            1.0), // Espacio interno alrededor del contenido
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .center, // Alinea los elementos al centro horizontalmente
          children: [// Espacio entre los botones
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Aceptar'),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
