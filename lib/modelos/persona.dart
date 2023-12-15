// Crear una clase que pueda albergar los datos del modelo persona
/*
{
	"name": "Luke Skywalker",
	"height": "172",
	"mass": "77",
	"hair_color": "blond", // hairColor
	"skin_color": "fair",
	"eye_color": "blue",
	"birth_year": "19BBY",
	"gender": "male",
	"homeworld": "https://swapi.dev/api/planets/1/",
	"films": [
		"https://swapi.dev/api/films/1/",
		"https://swapi.dev/api/films/2/",
		"https://swapi.dev/api/films/3/",
		"https://swapi.dev/api/films/6/"
	],
	"species": [],
	"vehicles": [
		"https://swapi.dev/api/vehicles/14/",
		"https://swapi.dev/api/vehicles/30/"
	],
	"starships": [
		"https://swapi.dev/api/starships/12/",
		"https://swapi.dev/api/starships/22/"
	],
	"created": "2014-12-09T13:50:51.644000Z",
	"edited": "2014-12-20T21:17:56.891000Z",
	"url": "https://swapi.dev/api/people/1/"
}
*/
// Vamos a hacer uso del constructor factory para crear modelos

class Persona {
  /// Aqui definimos las propiedades
  /// final String name;
  final String name;
  final String height;
  final DateTime created;
  final List<String> films;

  /// Creamos el constructor con las propiedades definidas
  Persona({
    required this.name,
    required this.height,
    required this.created,
    required this.films,
  });

  /// Vamos a usar nuestro constructor factory
  /// Un constructor factory quiere decir que se va a crear el objeto y se va a asignar
  /// valores a la clase justo antes de crearse.
  factory Persona.formJson(Map<String, dynamic> json) {
    return Persona(
      name: json['name'],
      height: json['height'],
      created: DateTime.tryParse(json['created']) ??
          DateTime.now(), //"2014-12-09T13:50:51.644000Z"
      // films: List<String>.from(json['films']),
      films: List<String>.from(json["films"].map((x) => x)),
    );
  }

  /// Vamos a practicar getters
  /// Se puede notar que nuestro atributo height o altura es de tipo string, pero podemos necesitarlo como de tipo double
  /// parseomos ese valor para obtenerlo directamente de la clase
  /// --- crea el getter
  double get heightAsDouble => double.tryParse(height) ?? 0.0;

  /// Para acceder o imprimir todos los datos que hemos convertido se puede generar un método que convierta el modelo en un Mapa
  /// Aqui crea un metodo para obtener el modelo parseado a json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'height': height,
      'created': created.toIso8601String(),
      'films': films,
    };
  }
}
