import 'package:astroscope/models/planets.dart';
import 'package:flutter/material.dart';

class PlanetFacts extends StatelessWidget {
  final Planet planet;

  const PlanetFacts({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    final facts = [
      _FactValue(
        icon: Icons.fitness_center,
        label: 'Mass\n(10²⁴ kg)',
        value: planet.facts.mass,
      ),
      _FactValue(
        icon: Icons.public,
        label: 'Gravity\n(m/s²)',
        value: planet.facts.gravity,
      ),
      _FactValue(
        icon: Icons.wb_sunny_outlined,
        label: 'Rotation\n(hours)',
        value: planet.facts.rotationHours,
      ),
      _FactValue(
        icon: Icons.rocket_launch_outlined,
        label: 'Escape velocity\n(km/s)',
        value: planet.facts.escapeVelocity,
      ),
      _FactValue(
        icon: Icons.thermostat_outlined,
        label: 'Mean temp\n(°C)',
        value: planet.facts.meanTemperature,
      ),
      _FactValue(
        icon: Icons.straighten,
        label: 'Distance from Sun\n(10⁶ km)',
        value: planet.facts.distanceFromSun,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 54),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(planet.imagePath, fit: BoxFit.cover),
                ),
                const Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xe823326d),
                          Color(0xe90a2143),
                          Color(0xe914424e),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 82, 14, 18),
                  child: Column(
                    children: [
                      Text(
                        planet.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 22),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: facts.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 138,
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 6,
                            ),
                        itemBuilder: (context, index) =>
                            _PlanetFactTile(fact: facts[index]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -54,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 132,
                height: 132,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xaaffffff), width: 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x66000000),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: const Color(0xff101a2a),
                  backgroundImage: AssetImage(planet.imagePath),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FactValue {
  final IconData icon;
  final String label;
  final String value;

  const _FactValue({
    required this.icon,
    required this.label,
    required this.value,
  });
}

class _PlanetFactTile extends StatelessWidget {
  final _FactValue fact;

  const _PlanetFactTile({required this.fact});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(fact.icon, color: Colors.white, size: 34),
        const SizedBox(height: 9),
        SizedBox(
          height: 34,
          child: Text(
            fact.label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              color: Color(0xfff2f4f9),
              fontSize: 11,
              height: 1.2,
            ),
          ),
        ),
        const SizedBox(height: 4),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            fact.value,
            maxLines: 1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
