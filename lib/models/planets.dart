class Planet {
  final String name;
  final String imagePath;
  final String description;
  final PlanetMetrics facts;

  const Planet({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.facts,
  });
}

class PlanetMetrics {
  final String mass;
  final String gravity;
  final String rotationHours;
  final String escapeVelocity;
  final String meanTemperature;
  final String distanceFromSun;

  const PlanetMetrics({
    required this.mass,
    required this.gravity,
    required this.rotationHours,
    required this.escapeVelocity,
    required this.meanTemperature,
    required this.distanceFromSun,
  });
}

final List<Planet> planets = const [
  Planet(
    name: 'Mercury',
    imagePath: 'assets/images/mercuryyy.webp',
    description: "Mercury is the smallest planet in our solar system and the nearest to the Sun.\nMercury is only slightly larger than Earth's Moon. It's the fastest planet, zipping around the Sun every 88 Earth days. Mercury is named for the swiftest of the ancient Roman gods.",
    facts: PlanetMetrics(
      mass: '0.330',
      gravity: '3.70',
      rotationHours: '1407.6',
      escapeVelocity: '4.25',
      meanTemperature: '167',
      distanceFromSun: '57.9',
    ),
  ),
  Planet(
    name: 'Venus',
    imagePath: 'assets/images/venuss.webp',
    description: "Venus is the second planet from the Sun, and our closest planetary neighbor. It's the hottest planet in our solar system, and is sometimes called Earth's twin.",
    facts: PlanetMetrics(
      mass: '4.87',
      gravity: '8.87',
      rotationHours: '-5832.5',
      escapeVelocity: '10.36',
      meanTemperature: '464',
      distanceFromSun: '108.2',
    ),
  ),
  Planet(
    name: 'Earth',
    imagePath: 'assets/images/earthh.webp',
    description: "Earth – our home planet – is the third planet from the Sun, and the fifth largest planet. It's the only place we know of inhabited by living things.",
    facts: PlanetMetrics(
      mass: '5.972',
      gravity: '9.81',
      rotationHours: '23.93',
      escapeVelocity: '11.19',
      meanTemperature: '15',
      distanceFromSun: '149.6',
    ),
  ),
  Planet(
    name: 'Mars',
    imagePath: 'assets/images/marss.webp',
    description: "Mars — the fourth planet from the Sun — is a dusty, cold, desert world with a very thin atmosphere. This dynamic planet has seasons, polar ice caps, extinct volcanoes, canyons, and weather.",
    facts: PlanetMetrics(
      mass: '0.642',
      gravity: '3.71',
      rotationHours: '24.62',
      escapeVelocity: '5.03',
      meanTemperature: '-65',
      distanceFromSun: '227.9',
    ),
  ),
  Planet(
    name: "Jupiter",
    imagePath: 'assets/images/jupiterr.webp',
    description: "Jupiter is a world of extremes. It's the largest planet in our solar system – if it were a hollow shell, 1,000 Earths could fit inside. It's also the oldest planet, forming from the dust and gases left over from the Sun's formation 4.6 billion years ago. But it has the shortest day in the solar system, taking about 9.9 hours to spin around once on its axis.",
    facts: PlanetMetrics(
      mass: '1898',
      gravity: '24.79',
      rotationHours: '9.93',
      escapeVelocity: '59.5',
      meanTemperature: '-110',
      distanceFromSun: '778.6',
    ),
  ),
  Planet(
    name: "Saturn",
    imagePath: 'assets/images/sa.jpg',
    description: "Saturn is the sixth planet from the Sun, and the second-largest planet in our solar system.",
    facts: PlanetMetrics(
      mass: '568',
      gravity: '10.44',
      rotationHours: '10.7',
      escapeVelocity: '35.5',
      meanTemperature: '-140',
      distanceFromSun: '1433.5',
    ),
  ),
  Planet(
    name: "Uranus",
    imagePath: 'assets/images/uranuss.webp',
    description: "Uranus is the seventh planet from the Sun, and the third largest planet in our solar system – about four times wider than Earth.\nUranus is very cold and windy. It is surrounded by faint rings, and more than two dozen small moons. It rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side",
    facts: PlanetMetrics(
      mass: '86.8',
      gravity: '8.69',
      rotationHours: '-17.24',
      escapeVelocity: '21.3',
      meanTemperature: '-195',
      distanceFromSun: '2872.5',
    ),
  ),
  Planet(
    name: 'Neptune',
    imagePath: 'assets/images/neptunee.webp',
    description:
        'Neptune is the eighth and most distant planet in our solar system.',
    facts: PlanetMetrics(
      mass: '102',
      gravity: '11.15',
      rotationHours: '16.11',
      escapeVelocity: '23.5',
      meanTemperature: '-200',
      distanceFromSun: '4495.1',
    ),
  ),
];
