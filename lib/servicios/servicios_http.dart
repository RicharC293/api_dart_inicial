import 'package:conexion_api/modelos/persona.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

/// En esta clase se van a crear todos los servicios que llamemos a la api
/// https://swapi.dev/api/
class Servicios {
  /// En una clase podemos establecer variables, la url base del servicio es una variable final
  /// que nunca va a cambiar
  /// https://swapi.dev/api/people/3/
  final host = 'swapi.dev';

  /// Vamos a crear nuestro primer servicio que se va a llamar obtener persona
  /// Al ser un servicio que va a tardar en retornar algun valor debe ser de tipo Future

  Future<Persona> obtenerPersona(int id) async {
    try {
      print("LOADING....");
      final uri = Uri.https(host, 'api/people/$id/');
      final response = await http.get(uri);
      final jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      final persona = Persona.formJson(jsonResponse);
      return persona;
    } catch (err) {
      print("ERROR: $err");
      rethrow;
    }
  }

  /// Vamos a crear un método que permita obtener los planetas con planets/3/
  /// 1. Crear un modelo en la carpeta modelos
  /// 2. Crear el metodo y retornarlo, usarlo en el archivo principal
}
