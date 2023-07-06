import 'package:flutter/material.dart';
import 'package:proyecto_eleccion_electorales/config/helpers/respuesta.dart';
import 'package:proyecto_eleccion_electorales/domain/entities/dato.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  final Respuesta obtenerRespuesta = Respuesta();
  
  List<Dato> datosVotante = [
    
  ];

  Future<void> getDatos(String text) async {

    if(text.isEmpty) return;    

    herReply(text);

    notifyListeners();
    moveScrollController();
  }

  Future<void> herReply(String dui) async {
    final datosV = await obtenerRespuesta.getAnswer(dui);

    datosVotante.add(datosV);
    notifyListeners();
    moveScrollController();
  }

  Future<void> moveScrollController() async{
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration( milliseconds: 300), 
      curve: Curves.easeOut
    );
  }

}