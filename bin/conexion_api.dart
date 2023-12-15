
import 'package:conexion_api/servicios/servicios.dart';

Future<void> main() async {
  /// Obtener los datos de una persona
  final servicio = Servicios();
  /// aqui consumimos los servicios
  final persona =  await servicio.obtenerPersona(1);
  print(persona.name);
  print(persona.created);

  print(persona.toJson());
}
