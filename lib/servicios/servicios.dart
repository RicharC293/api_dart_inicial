import 'dart:convert' as convert;

import '../modelos/persona.dart';

import 'package:http/http.dart' as http;

/// En esta clase se van a crear todos los servicios que llamemos a la api
/// https://swapi.dev/api/
class Servicios {
  /// En una clase podemos establecer variables, la url base del servicio es una variable final
  /// que nunca va a cambiar
  final host = 'swapi.dev';

  /// Vamos a crear nuestro primer servicio que se va a llamar obtener persona
  /// Al ser un servicio que va a tardar en retornar algun valor debe ser de tipo Future

  Future<Persona> obtenerPersona(int id) async {
    try {
      final path = 'api/people2/$id/';

      /// Utilizar un dart package para hacer peticiones http
      /// https://pub.dev/packages/http
      final uri = Uri.https(host, path);
      print(uri);
      print("LOADING..... ");
      final response = await http.get(uri);

      if(response.statusCode != 200) {
        throw 'ERROR: ${response.statusCode}, ${response.body}';
      }

      /// Obtener el json de la respuesta
      final json = convert.jsonDecode(response.body) as Map<String, dynamic>;

      /// Crear el objeto persona en base al constructor factory
      final persona = Persona.fromJson(json);

      return persona;
    } catch (err) {
      print("OBTENER_PERSONA: $err");
      if(err is http.ClientException) {
        print(err.message);
      }
      return Persona(name: '', height: '', created: DateTime.now(), url: '');
    }
  }

  /// Vamos a crear un método que permita obtener los planetas con planets/3/
  /// 1. Crear un modelo en la carpeta modelos 
  /// 2. Crear el metodo y retornarlo, usarlo en el archivo principal
}
