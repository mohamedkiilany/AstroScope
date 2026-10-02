import 'package:flutter/material.dart';

class SaturnScreen extends StatelessWidget {
  const SaturnScreen({super.key});

  static const _sections = [
    (
      eyebrow: 'NAMESAKE',
      title: 'Known since ancient times',
      body: 'Saturn is the farthest planet from Earth visible to the unaided eye. It was named for the Roman god of agriculture and wealth, father of Jupiter.',
    ),
    (
      eyebrow: 'POTENTIAL FOR LIFE',
      title: 'Worlds worth looking closer at',
      body: 'Saturn itself is too extreme and volatile to be conducive to life as we know it. Some of its moons may be more promising: Enceladus and Titan both have evidence of internal oceans and remain compelling places to investigate.',
    ),
    (
      eyebrow: 'SIZE & DISTANCE',
      title: 'Nine Earths across',
      body: 'Saturn’s equatorial diameter is about 74,897 miles (120,500 kilometers), around nine times Earth’s. If Earth were a nickel, Saturn would be about the size of a volleyball. It averages 886 million miles (1.4 billion kilometers) from the Sun, or 9.5 AU; sunlight takes about 80 minutes to arrive.',
    ),
    (
      eyebrow: 'ORBIT & ROTATION',
      title: 'A quick spin, a long year',
      body: 'A day on Saturn lasts about 10.7 hours, the second-shortest day of any planet. One orbit around the Sun takes about 29.4 Earth years, or 10,756 Earth days. Saturn’s axis tilts 26.73 degrees, similar to Earth’s, so it experiences seasons.',
    ),
    (
      eyebrow: 'MOONS',
      title: 'A system of remarkable worlds',
      body: 'As of March 2025, Saturn has 274 confirmed moons, more than any other planet, with additional discoveries still awaiting confirmation and official names. The moons range from haze-shrouded Titan to cratered Phoebe. Enceladus sprays jets of water into space, while Titan has lakes of liquid methane and evidence of an internal ocean.',
    ),
    (
      eyebrow: 'RINGS',
      title: 'Ice, rock, and the Cassini Division',
      body: 'Saturn’s rings may be fragments of comets, asteroids, or moons torn apart by gravity before reaching the planet. Billions of icy and dusty pieces range from tiny grains to house-sized chunks, with a few as large as mountains. The system reaches about 175,000 miles (282,000 kilometers) from Saturn, yet the main rings are typically only about 30 feet (10 meters) tall. The main rings are A, B, and C; the 2,920-mile (4,700-kilometer) Cassini Division separates A and B. Fainter rings D, E, F, and G extend farther out, with a distant Phoebe ring as well. From Saturn’s cloud tops, the rings would look mostly white, and each ring orbits at its own speed.',
    ),
    (
      eyebrow: 'FORMATION',
      title: 'A giant from the early solar system',
      body: 'Saturn formed about 4.5 billion years ago as gravity pulled swirling gas and dust together. Like Jupiter, it is made mostly of hydrogen and helium, the same two main ingredients as the Sun. It settled into its current position about four billion years ago as the sixth planet from the Sun.',
    ),
    (
      eyebrow: 'STRUCTURE',
      title: 'A planet lighter than water',
      body: 'Saturn’s dense center contains metals such as iron and nickel, surrounded by rocky material and compounds solidified under intense heat and pressure. A layer of liquid metallic hydrogen sits inside liquid hydrogen. Saturn is the only planet with an average density lower than water; in an impossibly large bathtub, it could float.',
    ),
    (
      eyebrow: 'SURFACE',
      title: 'No place to land',
      body: 'As a gas giant, Saturn has no true surface. It is made mostly of swirling gases and liquids. A spacecraft descending deeper into the planet would encounter pressures and temperatures powerful enough to crush, melt, and vaporize it.',
    ),
    (
      eyebrow: 'ATMOSPHERE',
      title: 'Cloud bands and a polar hexagon',
      body: 'Saturn’s clouds form faint stripes, jet streams, and storms in shades of yellow, brown, and gray. Equatorial winds reach about 1,600 feet per second (500 meters per second), and pressure deep in the atmosphere squeezes gas into liquid. At the north pole, a six-sided jet stream spans about 20,000 miles (30,000 kilometers), with winds near 200 miles per hour (322 kilometers per hour) around a rotating central storm. Hubble observations dating back to 2023 revealed an evolving, 10-sided atmospheric wave around the south pole, reported in September 2026.',
    ),
    (
      eyebrow: 'MAGNETOSPHERE',
      title: 'Auroras inside a vast magnetic realm',
      body: 'Saturn’s magnetic field is about 578 times as powerful as Earth’s. The planet, its rings, and many of its moons lie within its magnetosphere, where charged particles respond more strongly to Saturn’s field than to the solar wind. Cassini found that some auroras are driven by particles from Saturn’s moons and the planet’s rapid rotation, though these processes are not yet fully understood.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff100f0d),
      appBar: AppBar(
        title: const Text('Saturn'),
        centerTitle: true,
        backgroundColor: const Color(0xff191712),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/sa.jpg', fit: BoxFit.cover),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe6100f0d))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _SaturnHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'A golden gas giant wrapped in a spectacular system of ice and rock.',
                      style: TextStyle(
                        color: Color(0xffe6dfd0),
                        fontSize: 17,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: _SaturnStat(
                            value: '10.7 hours',
                            label: 'A SATURN DAY',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _SaturnStat(
                            value: '274',
                            label: 'CONFIRMED MOONS',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _SaturnStat(
                            value: '9.5 AU',
                            label: 'FROM THE SUN',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const _SaturnHighlight(
                      icon: Icons.blur_circular,
                      label: 'THE SIGNATURE FEATURE',
                      title: 'Rings made of countless worlds',
                      detail: 'Billions of icy and rocky fragments form a vast, thin ring system with gaps, bands, and intricate structure.',
                      color: Color(0xffdfbf83),
                    ),
                    const SizedBox(height: 10),
                    const _SaturnHighlight(
                      icon: Icons.water,
                      label: 'MOONS WITH OCEANS',
                      title: 'Enceladus and Titan',
                      detail: 'Water jets burst from Enceladus, while hazy Titan has methane lakes. Both moons may also conceal internal oceans.',
                      color: Color(0xff86b9c3),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Explore Saturn',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          'THE SIXTH PLANET',
                          style: TextStyle(
                            color: Color(0xffdfbf83),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ..._sections.map(
                      (section) => _SaturnSection(
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

class _SaturnHero extends StatelessWidget {
  const _SaturnHero();

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
            Image.asset('assets/images/sa.jpg', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe6100f0d)],
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
                    'THE RINGED PLANET',
                    style: TextStyle(
                      color: Color(0xffffd995),
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'SATURN',
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

class _SaturnStat extends StatelessWidget {
  final String value;
  final String label;

  const _SaturnStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff252117).withValues(alpha:0.9),
        border: const Border(
          top: BorderSide(color: Color(0xffd3b373), width: 2),
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
              color: Color(0xffc7beaa),
              fontSize: 8,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.55,
            ),
          ),
        ],
      ),
    );
  }
}

class _SaturnHighlight extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final String detail;
  final Color color;

  const _SaturnHighlight({
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
        color: const Color(0xff211f18).withValues(alpha:0.94),
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

class _SaturnSection extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String body;

  const _SaturnSection({
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
              color: Color(0xffdfbf83),
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
