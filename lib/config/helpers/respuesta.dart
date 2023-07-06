import 'package:dio/dio.dart';
import 'package:proyecto_eleccion_electorales/domain/entities/dato.dart';
import 'package:proyecto_eleccion_electorales/infrastructure/models/datos_model.dart';

class Respuesta {

  final _dio = Dio();

  Future<Dato> getAnswer(dui) async{

    final response = await _dio.get('http://127.0.0.1:8000/posts/$dui');

    final respuestaDatos = DatosModel.fromJsonMap(response.data);
   
    return respuestaDatos.toMessageEntity();
    
  }
}