import 'package:conexion_api/servicios/servicios.dart';

Future<void> main() async {
  /// Obtener los datos de una persona
  final servicio = Servicios();

  final persona = await servicio.obtenerPersona(1);

  print(persona.toJson());
}
