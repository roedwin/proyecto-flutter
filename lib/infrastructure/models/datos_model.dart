// To parse this JSON data, do
//
//     final datosModel = datosModelFromJson(jsonString);



import 'package:proyecto_eleccion_electorales/domain/entities/dato.dart';

class DatosModel {
    final String id;
    final String dui;
    final String nombre;
    final String departamento;
    final String municipio;
    final String centroDeVotacion;
    final String direccion;
    final String jrv;
    final String correlativo;

    DatosModel({
        required this.id,
        required this.dui,
        required this.nombre,
        required this.departamento,
        required this.municipio,
        required this.centroDeVotacion,
        required this.direccion,
        required this.jrv,
        required this.correlativo,
    });

    factory DatosModel.fromJsonMap(Map<String, dynamic> json) => DatosModel(
        id: json["id"],
        dui: json["dui"],
        nombre: json["nombre"],
        departamento: json["departamento"],
        municipio: json["municipio"],
        centroDeVotacion: json["centro_de_votacion"],
        direccion: json["direccion"],
        jrv: json["jrv"],
        correlativo: json["correlativo"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "dui": dui,
        "nombre": nombre,
        "departamento": departamento,
        "municipio": municipio,
        "centro_de_votacion": centroDeVotacion,
        "direccion": direccion,
        "jrv": jrv,
        "correlativo": correlativo,
    };

    Dato toMessageEntity() => Dato(
      id: id, 
      dui: dui, 
      nombre: nombre, 
      departamento: departamento, 
      municipio: municipio, 
      centroDeVotacion: centroDeVotacion, 
      direccion: direccion, 
      jrv: jrv, 
      correlativo: correlativo
    );
}
