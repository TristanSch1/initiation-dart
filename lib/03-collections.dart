// Classe pour l'exercice 7
class Planet {
  String name;
  double distanceFromEarth;

  Planet(this.name, this.distanceFromEarth);
}

// Classe et Enum pour l'exercice 10
enum Kind {
  planet,
  star,
  satellite,
  asteroid,
  comet,
}

class SolarSystemElement {
  String name;
  Kind kind;

  SolarSystemElement(this.name, this.kind);

  Map<String, dynamic> toJson() => {
    'name': name,
    'kind': kind
  };
}

void exercices() {
  // 1
  List<String> planets = ['Terre', 'Mars', 'Mercure', 'Saturne', 'Vénus', 'Neptune', 'Uranus', 'Jupiter'];
  planets.sort();
  print('Ordre alphabétique déscendant: ${planets.reversed}');

  // 2
  for (final planet in planets) {
    print(planet.toUpperCase());
  }

  // 3
  int i = 0;
  while (i < planets.length) {
    print(planets[i].substring(0, 1));
    i++;
  }

  // 4
  int j = 0;
  do {
    print('${j + 1} - ${planets[j]}');
    j++;
  } while (j < planets.length);

  // 5
  int k = 0;
  while (k < planets.length) {
    String lastLetter = planets[k].substring(planets[k].length - 1);
    bool isVowel = "aeiouyAEIOUY".indexOf(lastLetter) >= 0;

    if (isVowel) {
      print(planets[k]);
    }
    k++;
  }

  // 6
  planets.add('Pluton');
  print(planets);

  // 7
  List<Planet> planets2 = [
    Planet('Mars', 78.34),
    Planet('Mercure', 91.69),
    Planet('Saturne', 1275),
    Planet('Vénus', 41.40),
    Planet('Neptune', 4351.40),
    Planet('Uranus', 2723.95),
    Planet('Jupiter', 628.73),
  ];

  planets2.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));
  planets2.forEach((planet) => print('${planet.name} - ${planet.distanceFromEarth}'));

  // 8
  Map apollo = <String, String>{
   '07_1969': 'Apollo 11',
   '11_1969': 'Apollo 12',
   '02_1971': 'Apollo 14',
   '07_1971': 'Apollo 15',
   '04_1972': 'Apollo 16',
   '12_1972': 'Apollo 17',
  };

  print(apollo);
  print(apollo['07_1971']);
  print(apollo.keys);

  // 9
  apollo.update('07_1969', (_) => 'Neil Armstrong + Buzz Aldrin');
  print(apollo['07_1969']);

  // 10
  final SolarSystemElement sun = SolarSystemElement('Soleil', Kind.star);
  final SolarSystemElement earth = SolarSystemElement('Terre', Kind.planet);
  final SolarSystemElement moon = SolarSystemElement('Lune', Kind.satellite);
  final SolarSystemElement pluton = SolarSystemElement('Pluton', Kind.satellite);

  print(sun.toJson());
  print(earth.toJson());
  print(moon.toJson());
  print(pluton.toJson());
}