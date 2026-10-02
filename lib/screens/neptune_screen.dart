import 'package:flutter/material.dart';

class NeptuneScreen extends StatelessWidget {
  const NeptuneScreen({super.key});

  static const _sections = [
    (
      eyebrow: 'DISCOVERY & NAMESAKE',
      title: 'Found with mathematics',
      body: 'Galileo recorded Neptune as a fixed star in 1612 and 1613. In 1846, astronomers used mathematical predictions to locate the planet: Urbain Le Verrier calculated where an unknown world could explain irregularities in Uranus’s orbit, and Johann Gottfried Galle found Neptune at the Berlin Observatory. Triton was discovered just 17 days later. Neptune is named for the Roman god of the sea.',
    ),
    (
      eyebrow: 'POTENTIAL FOR LIFE',
      title: 'An unforgiving world',
      body: 'Neptune’s temperatures, pressures, and materials are too extreme and volatile for life as we know it. It is not considered a likely place for organisms to adapt and thrive.',
    ),
    (
      eyebrow: 'SIZE & DISTANCE',
      title: 'Thirty times farther from the Sun',
      body: 'Neptune has an equatorial diameter of 30,775 miles (49,528 kilometers), about four times Earth’s. If Earth were a nickel, Neptune would be about the size of a baseball. It averages 2.8 billion miles (4.5 billion kilometers) from the Sun, or 30 AU. Sunlight takes about four hours to reach it, and noon would look like dim twilight.',
    ),
    (
      eyebrow: 'ORBIT & ROTATION',
      title: 'One year lasts 165 Earth years',
      body: 'A day on Neptune lasts about 16 hours. One orbit takes 165 Earth years, or about 60,190 days; Neptune completed its first full orbit since discovery in 2011. Its axis tilts 28 degrees, giving it seasons that last more than 40 years each. Pluto’s orbit can bring it closer to the Sun than Neptune for 20 years at a time, most recently from 1979 to 1999. Their repeating orbital pattern prevents close approaches.',
    ),
    (
      eyebrow: 'MOONS',
      title: 'Triton, a captured world',
      body: 'Neptune has 16 known moons, named for Greek sea gods and nymphs. Triton, discovered by William Lassell 17 days after Neptune, is the largest. It orbits backward compared with Neptune’s rotation, suggesting it may have been captured. Despite a surface temperature near -391 F (-235 C), Voyager 2 saw icy geysers erupting more than 5 miles (8 kilometers) high. Triton has a thin atmosphere that has been observed warming, though scientists do not yet know why.',
    ),
    (
      eyebrow: 'RINGS',
      title: 'Five rings and four mysterious arcs',
      body: 'Neptune has at least five main rings: Galle, Leverrier, Lassell, Arago, and Adams. They are thought to be relatively young and short-lived. The outermost Adams ring contains four prominent clumps of material called Liberté, Egalité, Fraternité, and Courage. The nearby moon Galatea may help keep these arcs from spreading evenly around the ring.',
    ),
    (
      eyebrow: 'FORMATION',
      title: 'An ice giant from the outer solar system',
      body: 'Neptune formed about 4.5 billion years ago as gravity pulled gas and dust together. Like Uranus, it may have formed closer to the Sun and migrated outward about four billion years ago.',
    ),
    (
      eyebrow: 'STRUCTURE',
      title: 'A dense world of hot, icy fluids',
      body: 'Neptune is one of two ice giants. At least 80 percent of its mass is thought to be a hot, dense fluid of water, methane, and ammonia above a small rocky core. It is the densest of the giant planets. Deep beneath its cold clouds, intense pressure may keep an ocean of superhot water from boiling away.',
    ),
    (
      eyebrow: 'SURFACE',
      title: 'Clouds that deepen into a fluid mantle',
      body: 'Neptune has no solid surface. Its atmosphere, mostly hydrogen, helium, and methane, extends to great depths and gradually merges into water and other melted ices around a heavier core with roughly Earth’s mass.',
    ),
    (
      eyebrow: 'ATMOSPHERE',
      title: 'The windiest world in the solar system',
      body: 'Neptune’s atmosphere is mostly hydrogen and helium with a little methane, which reflects blue light. Images processed in 2024 showed that Uranus and Neptune look more alike in color than the deep-blue Voyager images suggested. Winds can exceed 1,200 miles per hour (2,000 kilometers per hour), faster than on any other planet. The Great Dark Spot observed by Voyager 2 in 1989 has disappeared, but other storms have since appeared.',
    ),
    (
      eyebrow: 'MAGNETOSPHERE',
      title: 'A magnetic field that wobbles',
      body: 'Neptune’s magnetic axis is tilted about 47 degrees from its rotation axis. Like Uranus, this misalignment makes the magnetosphere vary dramatically as the planet rotates. Neptune’s magnetic field is about 27 times more powerful than Earth’s.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff080f1c),
      appBar: AppBar(
        title: const Text('Neptune'),
        centerTitle: true,
        backgroundColor: const Color(0xff101a2b),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/neptunee.webp',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe6080f1c))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _NeptuneHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'A remote blue world of dim twilight, ancient storms, and supersonic winds.',
                      style: TextStyle(
                        color: Color(0xffd8e3f1),
                        fontSize: 17,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: _NeptuneStat(
                            value: '16 hours',
                            label: 'A NEPTUNIAN DAY',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _NeptuneStat(
                            value: '16',
                            label: 'KNOWN MOONS',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _NeptuneStat(
                            value: '30 AU',
                            label: 'FROM THE SUN',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const _NeptuneHighlight(
                      icon: Icons.air,
                      label: 'EXTREME WINDS',
                      title: 'More than 2,000 km/h',
                      detail: 'Neptune’s methane clouds race through the atmosphere at speeds unmatched anywhere else in the solar system.',
                      color: Color(0xff63c8ef),
                    ),
                    const SizedBox(height: 10),
                    const _NeptuneHighlight(
                      icon: Icons.water,
                      label: 'THE LARGEST MOON',
                      title: 'Triton erupts in the deep freeze',
                      detail: 'This captured, backward-orbiting moon is colder than -235 C, yet icy geysers shoot material miles above its surface.',
                      color: Color(0xffb2a8f3),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Explore Neptune',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          'THE EIGHTH PLANET',
                          style: TextStyle(
                            color: Color(0xff63c8ef),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ..._sections.map(
                      (section) => _NeptuneSection(
                        eyebrow: section.eyebrow,
                        title: section.title,
                        body: section.body,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NeptuneHero extends StatelessWidget {
  const _NeptuneHero();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: SizedBox(
        width: double.infinity,
        height: 270,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/neptunee.webp', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe6080f1c)],
                  stops: [0.34, 1],
                ),
              ),
            ),
            const Positioned(
              left: 20,
              right: 20,
              bottom: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THE ICE GIANT',
                    style: TextStyle(
                      color: Color(0xff8edcff),
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'NEPTUNE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      height: 1,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NeptuneStat extends StatelessWidget {
  final String value;
  final String label;

  const _NeptuneStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff162137).withValues(alpha: 0.93),
        border: const Border(
          top: BorderSide(color: Color(0xff63c8ef), width: 2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              value,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xffbdcadb),
              fontSize: 8,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _NeptuneHighlight extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final String detail;
  final Color color;

  const _NeptuneHighlight({
    required this.icon,
    required this.label,
    required this.title,
    required this.detail,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff151e31).withValues(alpha: 0.95),
        border: Border(left: BorderSide(color: color, width: 3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 23),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: color,
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.4,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  detail,
                  style: const TextStyle(
                    color: Color(0xffd3dbea),
                    fontSize: 13,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NeptuneSection extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String body;

  const _NeptuneSection({
    required this.eyebrow,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eyebrow,
            style: const TextStyle(
              color: Color(0xff63c8ef),
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: const TextStyle(
              color: Color(0xffd3dbea),
              fontSize: 14,
              height: 1.55,
            ),
          ),
          const SizedBox(height: 15),
          const Divider(height: 1, color: Color(0x35ffffff)),
        ],
      ),
    );
  }
}
