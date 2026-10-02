import 'package:flutter/material.dart';

class VenusScreen extends StatelessWidget {
  const VenusScreen({super.key});

  static const _sections = [
    _VenusSection(
      title: 'Venus at a glance',
      body: 'Venus is the second planet from the Sun and Earth\'s closest planetary neighbor. It is the third brightest object in the sky after the Sun and Moon, and it spins slowly in the opposite direction from most planets.\n\nVenus is similar in structure and size to Earth, but its thick atmosphere traps heat in a runaway greenhouse effect. Surface temperatures reach about 872 degrees Fahrenheit (467 Celsius), hot enough to melt lead, while atmospheric pressure is about 93 times that of Earth at sea level.',
    ),
    _VenusSection(
      title: 'Namesake',
      body: 'The ancient Romans named the Sun, Moon, and five brightest planets after their most important gods. Venus is named for the Roman goddess of love and beauty, known as Aphrodite to the ancient Greeks. Most features on Venus are named for women, making it the only planet named after a female god.',
    ),
    _VenusSection(
      title: 'Potential for Life',
      body: 'About 30 miles (50 kilometers) above the surface, temperatures range from 86 to 158 Fahrenheit (30 to 70 Celsius), and pressure is similar to Earth\'s surface. This region could accommodate extremophile microbes.\n\nPersistent dark streaks in the cloud tops absorb ultraviolet radiation and may be made of fine particles, ice crystals, iron chloride, or possibly microbial life. These observations are not evidence of life, but Venus\' clouds and vanished ocean make it an important target for future investigation.',
    ),
    _VenusSection(
      title: 'Size and Distance',
      body: 'Venus orbits the Sun from an average distance of 67 million miles (108 million kilometers), or 0.72 astronomical units. Sunlight takes about six minutes to travel from the Sun to Venus.\n\nIts equatorial diameter is about 7,521 miles (12,104 kilometers), close to Earth\'s 7,926 miles (12,756 kilometers). Venus can approach Earth to about 24 million miles (38 million kilometers), but the planets can also be 162 million miles (261 million kilometers) apart.\n\nVenus shows phases like the Moon when viewed through a telescope. Its complete cycle takes 584 days, a perspective that helped Galileo support the Copernican model of the solar system.',
    ),
    _VenusSection(
      title: 'Orbit and Rotation',
      body: 'A Venus day lasts 243 Earth days, longer than its 225-day trip around the Sun. Because Venus rotates slowly backward, sunrise is in the west and sunset is in the east. Sunrise to sunset takes about 117 Earth days.\n\nVenus has a very slight axial tilt of only three degrees, so it does not experience noticeable seasons.',
    ),
    _VenusSection(
      title: 'Moons',
      body: 'Venus has no moon, but it has a quasi-satellite named Zoozve. Quasi-satellites orbit the Sun while staying close to a planet, following a more elongated and less stable path. Zoozve is the first identified quasi-satellite of a major planet and may have accompanied Venus for at least 7,000 years.\n\nZoozve is estimated to be between 660 and 1,640 feet (200 to 500 meters) across. It was officially named in February 2024 after a child\'s poster led to a handwritten misreading of its provisional name, 2002 VE68.',
    ),
    _VenusSection(title: 'Rings', body: 'Venus has no rings.'),
    _VenusSection(
      title: 'Formation',
      body: 'Venus and Earth likely began with similar sizes, interiors, and oceans. Their very different fates provide a natural test case for understanding how habitable planets form. About 4.6 billion years ago, the disk of gas and dust around the young Sun accreted, cooled, and settled into the planets we know today.',
    ),
    _VenusSection(
      title: 'Structure',
      body: 'Venus and Earth both have an iron core, a hot-rock mantle, and a thin rocky crust. Venus may have experienced plate movement early in its history. Today, subduction and extreme volcanism may still reshape its surface. NASA\'s Magellan spacecraft mapped the planet with radar and found a relatively young landscape marked by volcanoes and towering mountains.',
    ),
    _VenusSection(
      title: 'Surface',
      body: 'Venus is the hottest planet in the solar system, with surface temperatures near 872 degrees Fahrenheit (467 Celsius). Its pressure is comparable to being more than 3,000 feet underwater on Earth. Soviet Venera landers found a barren, dim, rocky landscape beneath a sulfur-yellow sky.\n\nVolcanoes and tectonic forces have erased much of the planet\'s early surface. Venus has valleys, high mountains, thousands of volcanoes, and regions such as Ishtar Terra and Aphrodite Terra. Its notable features include the Sacajawea volcanic crater, Diana canyon, pancake domes, tick domes, and tesserae terrain.',
    ),
    _VenusSection(
      title: 'Atmosphere',
      body: 'Venus has the hottest planetary surface in the solar system. Its atmosphere is mostly carbon dioxide, with dense clouds of sulfuric acid. The pressure at the surface is 93 times Earth sea-level pressure. Higher in the atmosphere, temperatures and pressure gradually become less extreme.',
    ),
    _VenusSection(
      title: 'Magnetosphere',
      body: 'Venus does not generate its own internal magnetic field. Instead, an induced magnetic field forms when the Sun\'s magnetic field interacts with electrically excited gases in Venus\' ionosphere. The solar wind stretches this field into an extended teardrop shape as it blows past the planet.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17100b),
      appBar: AppBar(
        title: const Text('Venus'),
        centerTitle: true,
        backgroundColor: const Color(0xff24170f),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/venuss.webp', fit: BoxFit.cover),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe617100b))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _VenusHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'Earth’s fiery twin',
                      style: TextStyle(
                        color: Color(0xfff1e5d6),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'A cloud-veiled world where a day outlasts a year.',
                      style: TextStyle(
                        color: Color(0xffd0bda8),
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Row(
                      children: [
                        Expanded(
                          child: _VenusStat(value: '467°C', label: 'SURFACE'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _VenusStat(value: '243 days', label: 'A DAY'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _VenusStat(
                            value: '0.72 AU',
                            label: 'FROM THE SUN',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const _VenusHighlight(
                      icon: Icons.thermostat,
                      label: 'RUNAWAY GREENHOUSE',
                      title: 'The hottest planetary surface',
                      detail: 'Dense carbon dioxide and sulfuric-acid clouds trap heat beneath an atmosphere with 93 times Earth’s sea-level pressure.',
                      color: Color(0xffffa85c),
                    ),
                    const SizedBox(height: 10),
                    const _VenusHighlight(
                      icon: Icons.sync_alt,
                      label: 'BACKWARD ROTATION',
                      title: 'A day longer than a year',
                      detail: 'Venus spins slowly in reverse: the Sun rises in the west, and one rotation takes longer than its orbit around the Sun.',
                      color: Color(0xffe7c781),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Explore Venus',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ..._sections.map(
                      (section) => _VenusSectionRow(section: section),
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

class _VenusSection {
  final String title;
  final String body;

  const _VenusSection({required this.title, required this.body});
}

class _VenusHero extends StatelessWidget {
  const _VenusHero();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: SizedBox(
        width: double.infinity,
        height: 290,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/venuss.webp', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe617100b)],
                  stops: [0.36, 1],
                ),
              ),
            ),
            const Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THE SECOND PLANET',
                    style: TextStyle(
                      color: Color(0xffffc27d),
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.8,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'VENUS',
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

class _VenusStat extends StatelessWidget {
  final String value;
  final String label;

  const _VenusStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xe6271b13),
        border: Border(top: BorderSide(color: Color(0xffffad67), width: 2)),
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
              color: Color(0xffdbc7ae),
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

class _VenusHighlight extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final String detail;
  final Color color;

  const _VenusHighlight({
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
        color: const Color(0xff261b13).withValues(alpha:0.95),
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
                    color: Color(0xffdfd3c5),
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

class _VenusSectionRow extends StatelessWidget {
  final _VenusSection section;

  const _VenusSectionRow({required this.section});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: const TextStyle(
              color: Color(0xffffc27d),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            section.body,
            style: const TextStyle(
              color: Color(0xffe4d9ce),
              fontSize: 15,
              height: 1.55,
            ),
          ),
          const SizedBox(height: 14),
          const Divider(height: 1, color: Color(0x35ffffff)),
        ],
      ),
    );
  }
}
