import 'package:flutter/material.dart';

class JupiterScreen extends StatelessWidget {
  const JupiterScreen({super.key});

  static const _sections = [
    (
      eyebrow: 'NAMESAKE',
      title: 'King of the ancient gods',
      body: 'Jupiter takes its name from the king of the Roman gods. Its largest moons are named for mythological figures associated with Jupiter and his Greek counterpart, Zeus.',
    ),
    (
      eyebrow: 'POTENTIAL FOR LIFE',
      title: 'Look to the moons',
      body: 'Jupiter itself is unlikely to support life as we know it: its temperatures, pressures, and materials are too extreme. Europa may be more promising. Evidence points to a vast ocean beneath its icy crust, where conditions could potentially support life.',
    ),
    (
      eyebrow: 'SIZE & DISTANCE',
      title: 'A giant among planets',
      body: 'Jupiter has a radius of 43,440.7 miles (69,911 kilometers), making it 11 times wider than Earth. If Earth were a grape, Jupiter would be about the size of a basketball. It orbits an average of 484 million miles (778 million kilometers) from the Sun, or 5.2 AU. Sunlight takes about 43 minutes to get there.',
    ),
    (
      eyebrow: 'ORBIT & ROTATION',
      title: 'The shortest day in the solar system',
      body: 'Jupiter spins once in about 9.9 hours, but takes nearly 12 Earth years (4,333 days) to orbit the Sun. Its axis tilts only 3 degrees, so it spins almost upright and has no seasons as extreme as those on more tilted worlds.',
    ),
    (
      eyebrow: 'MOONS',
      title: 'A miniature solar system',
      body: 'Jupiter has 115 officially recognized moons. The four largest, Io, Europa, Ganymede, and Callisto, were first observed by Galileo Galilei in 1610. Io is the most volcanically active body in the solar system; Ganymede is its largest moon, even bigger than Mercury. Callisto has an ancient, heavily cratered surface, while Europa may hide a liquid-water ocean beneath its ice.',
    ),
    (
      eyebrow: 'RINGS',
      title: 'A faint ring system',
      body: 'Voyager 1 discovered Jupiter’s rings in 1979. Made of small, dark particles, they are difficult to see except when backlit by the Sun. Dust kicked up by impacts on Jupiter’s small inner moons may help replenish the rings.',
    ),
    (
      eyebrow: 'FORMATION',
      title: 'The giant that never became a star',
      body: 'Jupiter formed about 4.6 billion years ago as gravity drew gas and dust together. It gathered more than twice the material of all the other planets combined. It contains many of the same ingredients as the Sun, but never became massive enough to ignite. About four billion years ago, it settled into its current place as the fifth planet from the Sun.',
    ),
    (
      eyebrow: 'STRUCTURE',
      title: 'An ocean of metallic hydrogen',
      body: 'Jupiter is made mostly of hydrogen and helium. Deeper down, pressure turns hydrogen into a liquid and eventually squeezes electrons free, creating electrically conducting metallic hydrogen. Currents in this fast-spinning layer help power Jupiter’s immense magnetic field. Juno data suggests the planet’s core is large and partly dissolved into the surrounding metallic hydrogen, rather than a small, sharply defined solid center.',
    ),
    (
      eyebrow: 'SURFACE',
      title: 'No solid ground to land on',
      body: 'Jupiter is a gas giant with no true surface. It is made of swirling gases and liquids, and pressure and temperature rise sharply with depth. A spacecraft descending into the planet would eventually be crushed, melted, and vaporized.',
    ),
    (
      eyebrow: 'ATMOSPHERE',
      title: 'Cloud bands and colossal storms',
      body: 'Jupiter’s atmosphere is mostly hydrogen and helium, with cloud layers likely made of ammonia ice, ammonium hydrosulfide, and water. Fast rotation drives powerful east-west jet streams: dark orange belts and lighter zones flow in opposite directions. Winds near the equator can reach 335 miles per hour (539 kilometers per hour). The Great Red Spot is a long-lived storm larger than Earth, extending about 300 miles (500 kilometers) below the cloud tops. Juno has also revealed tall storms and resilient clusters of cyclones at both poles.',
    ),
    (
      eyebrow: 'MAGNETOSPHERE',
      title: 'A magnetic realm with auroras',
      body: 'Jupiter’s magnetic field is 16 to 54 times as powerful as Earth’s. It traps charged particles in intense radiation belts around the planet and stretches millions of miles toward the Sun, with a long tail reaching beyond Saturn’s orbit. The field also produces spectacular auroras near Jupiter’s poles.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff100e0c),
      appBar: AppBar(
        title: const Text('Jupiter'),
        centerTitle: true,
        backgroundColor: const Color(0xff19130f),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/jupiterr.webp',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe6100e0c))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _JupiterHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'A colossal world of cloud bands, fierce winds, and hidden oceans.',
                      style: TextStyle(
                        color: Color(0xffe8ddd2),
                        fontSize: 17,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: _JupiterStat(
                            value: '9.9 hours',
                            label: 'SHORTEST PLANETARY DAY',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _JupiterStat(
                            value: '115',
                            label: 'KNOWN MOONS',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _JupiterStat(
                            value: '5.2 AU',
                            label: 'FROM THE SUN',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const _JupiterHighlight(
                      icon: Icons.cyclone,
                      label: 'THE GREAT RED SPOT',
                      title: 'A storm bigger than Earth',
                      detail: 'This giant atmospheric vortex has raged for centuries and reaches deep below Jupiter’s cloud tops.',
                      color: Color(0xffe88a56),
                    ),
                    const SizedBox(height: 10),
                    const _JupiterHighlight(
                      icon: Icons.water,
                      label: 'A MOON TO WATCH',
                      title: 'Europa’s hidden ocean',
                      detail: 'Beneath Europa’s icy shell may lie a vast liquid ocean, making this moon one of the most intriguing places to search for life.',
                      color: Color(0xff85bfd0),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Explore Jupiter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          'THE FIFTH PLANET',
                          style: TextStyle(
                            color: Color(0xffdfa66e),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ..._sections.map(
                      (section) => _JupiterSection(
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

class _JupiterHero extends StatelessWidget {
  const _JupiterHero();

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
            Image.asset('assets/images/jupiterr.webp', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe6100e0c)],
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
                    'THE GAS GIANT',
                    style: TextStyle(
                      color: Color(0xffffc58a),
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'JUPITER',
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

class _JupiterStat extends StatelessWidget {
  final String value;
  final String label;

  const _JupiterStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff241b15).withOpacity(0.9),
        border: const Border(
          top: BorderSide(color: Color(0xffd59658), width: 2),
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
              color: Color(0xffc8b6a4),
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

class _JupiterHighlight extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final String detail;
  final Color color;

  const _JupiterHighlight({
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
        color: const Color(0xff211a15).withOpacity(0.94),
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
                    color: Color(0xffd6d0cd),
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

class _JupiterSection extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String body;

  const _JupiterSection({
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
              color: Color(0xffdfa66e),
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
              color: Color(0xffd6d0cd),
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
