import 'package:flutter/material.dart';

class VerificarDuiScreen extends StatelessWidget {
  const VerificarDuiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.blue, // Establece el color de fondo azul
                    padding: const EdgeInsets.all(
                        16.0), // Espacio interno alrededor del texto
                    child: const Text(
                      'VERIFICA TUS DATOS ELECTORALES',
                      style: TextStyle(
                        color: Colors
                            .white, // Establece el color del texto en blanco
                        fontSize: 24.0, // Tamaño de fuente del texto
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Ingrese el numero de DUI',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (value) {
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: '00000000-0',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey, // Color de texto del placeholder
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width:
                        double.infinity, // Ocupa todo el ancho de la pantalla
                    color: Colors.grey, // Establece el color de fondo gris
                    padding: const EdgeInsets.all(
                        16.0), // Espacio interno alrededor del contenido
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Alinea los elementos al centro horizontalmente
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('CANCELAR'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade700, // Establece el color gris como fondo del botón
                          ),
                        ),
                        const SizedBox(
                            width: 16.0), // Espacio entre los botones
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/datos');
                          },
                          child: const Text('CONSULTAR'),
                        ),
                      ],
                    ),
                  )]);
  }
}