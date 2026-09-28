import 'package:flutter/material.dart';

class UranusScreen extends StatelessWidget {
  const UranusScreen({super.key});

  static const _sections = [
    (
      eyebrow: 'DISCOVERY & NAMESAKE',
      title: 'A planet found through a telescope',
      body: 'William Herschel discovered Uranus in 1781, initially believing it might be a comet or star. Two years later it was accepted as a new planet. Herschel proposed naming it Georgium Sidus after King George III, but astronomer Johann Bode suggested Uranus, after the Greek god of the sky.',
    ),
    (
      eyebrow: 'POTENTIAL FOR LIFE',
      title: 'A world too extreme for life as we know it',
      body: 'Uranus has temperatures, pressures, and materials that are likely too extreme and volatile for organisms to adapt to. The ice giant is not considered a likely place for life as we know it.',
    ),
    (
      eyebrow: 'SIZE & DISTANCE',
      title: 'Four times wider than Earth',
      body: 'Uranus has an equatorial diameter of 31,763 miles (51,118 kilometers). If Earth were the size of a nickel, Uranus would be about the size of a softball. It averages 1.8 billion miles (2.9 billion kilometers) from the Sun, about 19 AU; sunlight takes 2 hours and 40 minutes to arrive.',
    ),
    (
      eyebrow: 'ORBIT & ROTATION',
      title: 'A year with a 21-year-long winter',
      body: 'Uranus rotates once in about 17 hours and completes an orbit around the Sun in 84 Earth years, or 30,687 days. Its axis tilts 97.77 degrees, so it rolls around the Sun almost on its side. Each pole spends nearly a quarter of the Uranian year facing the Sun, while the other half of the planet experiences a 21-year-long dark winter. Uranus also rotates in the opposite direction to most planets, as Venus does.',
    ),
    (
      eyebrow: 'MOONS',
      title: 'Shakespearean companions',
      body: 'Uranus has 28 known moons, uniquely named for characters from the works of William Shakespeare and Alexander Pope. Its inner moons appear to be made roughly half of water ice and half of rock. The outer moons may be captured asteroids, though their composition is not known.',
    ),
    (
      eyebrow: 'RINGS',
      title: 'Thirteen faint rings',
      body: 'Uranus has two ring groups: nine narrow, dark inner rings and two faint outer rings, one reddish and the other blue. In order outward, they are Zeta, 6, 5, 4, Alpha, Beta, Eta, Gamma, Delta, Lambda, Epsilon, Nu, and Mu. Some of the larger rings are surrounded by belts of fine dust.',
    ),
    (
      eyebrow: 'FORMATION',
      title: 'An ice giant that migrated outward',
      body: 'Uranus formed about 4.5 billion years ago as gravity drew together gas and dust. Like Neptune, it may have formed closer to the Sun before moving to the outer solar system about four billion years ago. It is now the seventh planet from the Sun.',
    ),
    (
      eyebrow: 'STRUCTURE',
      title: 'A deep mantle of hot, icy fluids',
      body: 'Uranus is an ice giant, and 80 percent or more of its mass is thought to be a hot, dense fluid of water, methane, and ammonia above a small rocky core. Temperatures near the core may reach 9,000 degrees Fahrenheit (4,982 degrees Celsius). Methane absorbs red light and gives the planet its blue-green appearance. Uranus is slightly larger in diameter than Neptune but has less mass, and it is the second-least-dense planet after Saturn.',
    ),
    (
      eyebrow: 'SURFACE',
      title: 'No solid ground beneath the clouds',
      body: 'Uranus has no true surface. It is made mostly of swirling fluids, and the extreme pressures and temperatures within its atmosphere would destroy a spacecraft attempting to descend.',
    ),
    (
      eyebrow: 'ATMOSPHERE',
      title: 'Cold clouds and fast winds',
      body: 'The atmosphere is mostly hydrogen and helium, with methane and traces of water and ammonia. Uranus can be the coldest planet in the solar system, with temperatures as low as 49 kelvin (-224.2 degrees Celsius). Winds reach up to 560 miles per hour (900 kilometers per hour). They blow opposite the planet’s rotation near the equator and with it closer to the poles. Voyager 2 saw only a few clouds during its 1986 flyby, while later observations have found rapidly changing bright features and dynamic clouds.',
    ),
    (
      eyebrow: 'MAGNETOSPHERE',
      title: 'A tilted field and corkscrew tail',
      body: 'Uranus has an unusually lopsided magnetic field: its magnetic axis is tilted nearly 60 degrees from the rotation axis and offset from the planet’s center by about one-third of its radius. Its auroras do not line up with the poles as they do on Earth, Jupiter, and Saturn. The planet’s sideways rotation twists its magnetic field lines into a corkscrew-shaped tail that extends millions of miles into space.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff091314),
      appBar: AppBar(
        title: const Text('Uranus'),
        centerTitle: true,
        backgroundColor: const Color(0xff102022),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/uranuss.webp', fit: BoxFit.cover),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe6091314))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _UranusHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'A frozen blue-green giant rolling through its long orbit on its side.',
                      style: TextStyle(
                        color: Color(0xffd8e8e7),
                        fontSize: 17,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: _UranusStat(
                            value: '97.77°',
                            label: 'AXIAL TILT',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _UranusStat(value: '28', label: 'KNOWN MOONS'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _UranusStat(value: '13', label: 'FAINT RINGS'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const _UranusHighlight(
                      icon: Icons.sync_alt,
                      label: 'A SIDEWAYS WORLD',
                      title: 'Seasons unlike anywhere else',
                      detail: 'Uranus rolls around the Sun on its side. Each pole gets decades in sunlight followed by a 21-year stretch of darkness.',
                      color: Color(0xff71c8c9),
                    ),
                    const SizedBox(height: 10),
                    const _UranusHighlight(
                      icon: Icons.air,
                      label: 'EXTREME WEATHER',
                      title: 'Winds up to 900 km/h',
                      detail: 'At 49 K (-224.2 C) in its coldest regions, Uranus is among the coldest worlds, despite winds racing around the planet.',
                      color: Color(0xffa1d8e1),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Explore Uranus',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          'THE SEVENTH PLANET',
                          style: TextStyle(
                            color: Color(0xff71c8c9),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ..._sections.map(
                      (section) => _UranusSection(
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

class _UranusHero extends StatelessWidget {
  const _UranusHero();

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
            Image.asset('assets/images/uranuss.webp', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe6091314)],
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
                      color: Color(0xffa1e3df),
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'URANUS',
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

class _UranusStat extends StatelessWidget {
  final String value;
  final String label;

  const _UranusStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff172526).withOpacity(0.92),
        border: const Border(
          top: BorderSide(color: Color(0xff71c8c9), width: 2),
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
              color: Color(0xffb3cccd),
              fontSize: 8,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _UranusHighlight extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final String detail;
  final Color color;

  const _UranusHighlight({
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
        color: const Color(0xff152122).withOpacity(0.95),
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
                    color: Color(0xffd2dfdf),
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

class _UranusSection extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String body;

  const _UranusSection({
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
              color: Color(0xff71c8c9),
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
              color: Color(0xffd2dfdf),
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
