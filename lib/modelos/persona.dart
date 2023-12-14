// Crear una clase que pueda albergar los datos del modelo persona
/*
{
	"name": "Luke Skywalker",
	"height": "172",
	"mass": "77",
	"hair_color": "blond",
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
  /// ---- aqui las propiedades

  /// Creamos el constructor con las propiedades definidas
  /// --- aqui el constructor

  /// Vamos a usar nuestro constructor factory
  /// Un constructor factory quiere decir que se va a crear el objeto y se va a asignar
  /// valores a la clase justo antes de crearse.
  /// --- aqui el factory

  /// Vamos a practicar getters
  /// Se puede notar que nuestro atributo height o altura es de tipo string, pero podemos necesitarlo como de tipo double
  /// parseomos ese valor para obtenerlo directamente de la clase
  /// --- crea el getter


  /// Para acceder o imprimir todos los datos que hemos convertido se puede generar un método que convierta el modelo en un Mapa
  
  /// Aqui crea un metodo para obtener el modelo parseado a json
}
