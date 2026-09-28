import 'package:flutter/material.dart';

class EarthScreen extends StatelessWidget {
  const EarthScreen({super.key});

  static const _sections = [
    _EarthSection(
      title: 'Earth at a glance',
      body: 'Earth is the fifth largest planet in the solar system and the only planet with liquid water on its surface. Just slightly larger than Venus, it is the biggest of the four rocky planets closest to the Sun.',
    ),
    _EarthSection(
      title: 'Namesake',
      body: 'Earth is the only planet whose English name does not come from Greek or Roman mythology. Its name is about 1,000 years old and comes from Old English and Germanic words meaning "the ground."',
    ),
    _EarthSection(
      title: 'Potential for Life',
      body: 'Earth has a hospitable temperature and chemistry that allow life to thrive. Most of the planet is covered in liquid water, and the oceans provided a place for life to begin about 3.8 billion years ago. Some conditions that sustain life are changing because of climate change.',
    ),
    _EarthSection(
      title: 'Size and Distance',
      body: 'Earth has an equatorial diameter of 7,926 miles (12,756 kilometers), making it the largest terrestrial planet and the fifth largest planet overall. It is an average of 93 million miles (150 million kilometers) from the Sun, exactly one astronomical unit. Sunlight takes about eight minutes to reach Earth.',
    ),
    _EarthSection(
      title: 'Orbit and Rotation',
      body: 'Earth completes one rotation every 23.9 hours and one orbit around the Sun every 365.25 days. Every four years, a leap day keeps our calendar aligned with the extra quarter day in Earth\'s orbit.\n\nEarth\'s axis is tilted 23.4 degrees. This tilt causes the seasons as each hemisphere receives different amounts of direct sunlight during the year.',
    ),
    _EarthSection(
      title: 'Moon',
      body: 'Earth has one moon, the brightest and most familiar object in the night sky. The Moon stabilizes Earth\'s wobble and helps make the climate less variable. It likely formed after a large impact displaced material from the young Earth.\n\nThe Moon has a radius of 1,080 miles (1,738 kilometers) and is an average of 238,855 miles (384,400 kilometers) away. Thirty Earth-sized planets could fit between Earth and the Moon.',
    ),
    _EarthSection(title: 'Rings', body: 'Earth has no rings.'),
    _EarthSection(
      title: 'Formation',
      body: 'About 4.5 billion years ago, gravity pulled swirling gas and dust together to form Earth as the third planet from the Sun. Like the other terrestrial planets, Earth developed a central core, rocky mantle, and solid crust.',
    ),
    _EarthSection(
      title: 'Structure',
      body: 'Earth has four main layers: a solid iron and nickel inner core, a liquid iron and nickel outer core, a thick rocky mantle, and a thin crust. The inner core is about 759 miles (1,221 kilometers) in radius and reaches temperatures near 9,800 degrees Fahrenheit (5,400 degrees Celsius).',
    ),
    _EarthSection(
      title: 'Surface',
      body: 'Earth\'s lithosphere is divided into huge moving plates. Their movement creates earthquakes, mountains, and volcanoes. The global ocean covers about 71% of the surface and contains 97% of Earth\'s water. Much of Earth\'s volcanic and mountain activity is hidden beneath the oceans.',
    ),
    _EarthSection(
      title: 'Atmosphere',
      body: 'Near the surface, Earth\'s atmosphere is 78% nitrogen, 21% oxygen, and 1% other gases such as argon, carbon dioxide, and neon. It influences weather and climate, shields life from harmful solar radiation, and burns up most meteoroids before they reach the ground.',
    ),
    _EarthSection(
      title: 'Magnetosphere',
      body: 'Earth\'s rapid rotation and molten nickel-iron core generate a magnetic field. The solar wind stretches it into a teardrop shape. Charged particles trapped near the magnetic poles collide with air molecules and create aurorae. Earth\'s magnetic polarity can reverse, but such reversals are not known to harm life.',
    ),
  ];

  static const _facts = [
    'Measuring Up',
    'If the Sun were as tall as a typical front door, Earth would be the size of a nickel.',

    'We\'re On It',
    'Earth is a rocky planet with mountains, canyons, plains, and a surface mostly covered in water.',

    'Breathe Easy',
    'Earth\'s atmosphere is 78% nitrogen, 21% oxygen, and 1% other ingredients.',

    'Our Cosmic Companion',
    'Earth has one moon.',
    'Ringless',
    'Earth has no rings.',

    'Orbital Science',
    'Spacecraft study Earth as a whole system, observing its atmosphere, ocean, glaciers, and solid ground.',

    'Home, Sweet Home',
    'Earth is the perfect place for life as we know it.',

    'Protective Shield',
    'Our atmosphere protects us from incoming meteoroids, most of which burn up before reaching the surface.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07111b),
      appBar: AppBar(
        title: const Text('Earth'),
        centerTitle: true,
        backgroundColor: const Color(0xff0b1d2b),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/earthh.webp', fit: BoxFit.cover),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe607111b))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _EarthHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'Our living blue world',
                      style: TextStyle(
                        color: Color(0xffe3f0e8),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'The only world we know that supports life.',
                      style: TextStyle(
                        color: Color(0xffb5cbd1),
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Row(
                      children: [
                        Expanded(
                          child: _EarthStat(value: '71%', label: 'OCEAN COVER'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _EarthStat(value: '23.9 hrs', label: 'A DAY'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _EarthStat(
                            value: '1 AU',
                            label: 'FROM THE SUN',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'A living planet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ..._sections.map(
                      (section) => _EarthSectionRow(section: section),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '8 Need-to-Know Things',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'About our home planet',
                      style: TextStyle(color: Color(0xffb5cbd1), fontSize: 14),
                    ),
                    const SizedBox(height: 12),
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

class _EarthSection {
  final String title;
  final String body;

  const _EarthSection({required this.title, required this.body});
}

class _EarthHero extends StatelessWidget {
  const _EarthHero();

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
            Image.asset('assets/images/earthh.webp', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x0007111b), Color(0xe607111b)],
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
                    'THE THIRD PLANET',
                    style: TextStyle(
                      color: Color(0xff83e0a6),
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.8,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'EARTH',
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

class _EarthStat extends StatelessWidget {
  final String value;
  final String label;

  const _EarthStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xe6122d3b),
        border: Border(top: BorderSide(color: Color(0xff56b9d6), width: 2)),
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
              color: Color(0xffacd0d8),
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

class _EarthSectionRow extends StatelessWidget {
  final _EarthSection section;

  const _EarthSectionRow({required this.section});

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
              color: Color(0xff83e0a6),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            section.body,
            style: const TextStyle(
              color: Color(0xffd8e6e5),
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
//   class _EarthFactRow extends StatelessWidget {
// class _FactCard extends StatelessWidget {
//   final int index;
//   final String title;
//   final String body;

//   const _EarthFactRow({
//     required this.index,
//     required this.title,
//     required this.body,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             '$index',
//             style: const TextStyle(
//               color: Color(0xff83dfbd),
//               fontSize: 13,
//               fontWeight: FontWeight.w800,
//             ),
//           ),
//           const SizedBox(width: 13),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   body,
//                   style: const TextStyle(
//                     color: Color(0xffbdcdc5),
//                     height: 1.45,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// }
