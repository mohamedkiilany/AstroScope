import 'package:flutter/material.dart';

class MercuryScreen extends StatelessWidget {
  const MercuryScreen({super.key});

  static const _sections = [
    (
      title: 'Temperature and Speed',
      body: 'Mercury\'s surface temperatures are both extremely hot and cold. Because the planet is so close to the Sun, day temperatures can reach highs of 800 F (430 C). Without an atmosphere to retain that heat at night, temperatures can dip as low as -290 F (-180 C).\n\nDespite its proximity to the Sun, Mercury is not the hottest planet in our solar system - that title belongs to nearby Venus, thanks to its dense atmosphere. But Mercury is the fastest planet, zipping around the Sun every 88 Earth days.',
    ),
    (
      title: 'Namesake',
      body: 'Mercury is appropriately named for the swiftest of the ancient Roman gods.',
    ),
    (
      title: 'Potential for Life',
      body: 'Mercury\'s environment is not conducive to life as we know it. The temperatures and solar radiation that characterize this planet are most likely too extreme for organisms to adapt to.',
    ),
    (
      title: 'Size and Distance',
      body: 'With a radius of 1,516 miles (2,440 kilometers), Mercury is a little more than 1/3 the width of Earth. If Earth were the size of a nickel, Mercury would be about as big as a blueberry.\n\nFrom an average distance of 36 million miles (58 million kilometers), Mercury is 0.4 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 3.2 minutes to travel from the Sun to Mercury.',
    ),
    (
      title: 'Orbit and Rotation',
      body: 'Mercury\'s highly eccentric, egg-shaped orbit takes the planet as close as 29 million miles (47 million kilometers) and as far as 43 million miles (70 million kilometers) from the Sun. It speeds around the Sun every 88 days, traveling through space at nearly 29 miles (47 kilometers) per second, faster than any other planet.\n\nMercury spins slowly on its axis and completes one rotation every 59 Earth days. But when Mercury is moving fastest in its elliptical orbit around the Sun, each rotation is not accompanied by sunrise and sunset like it is on most other planets. The morning Sun appears to rise briefly, set, and rise again from some parts of the planet\'s surface. The same thing happens in reverse at sunset for other parts of the surface. One Mercury solar day (one full day-night cycle) equals 176 Earth days - just over two years on Mercury.\n\nMercury\'s axis of rotation is tilted just 2 degrees with respect to the plane of its orbit around the Sun. That means it spins nearly perfectly upright and so does not experience seasons as many other planets do.',
    ),
    (title: 'Moons', body: 'Mercury doesn\'t have moons.'),
    (title: 'Rings', body: 'Mercury doesn\'t have rings.'),
    (
      title: 'Formation',
      body: 'Mercury formed about 4.5 billion years ago when gravity pulled swirling gas and dust together to form this small planet nearest the Sun. Like its fellow terrestrial planets, Mercury has a central core, a rocky mantle, and a solid crust.',
    ),
    (
      title: 'Structure',
      body: 'Mercury is the second densest planet, after Earth. It has a large metallic core with a radius of about 1,289 miles (2,074 kilometers), about 85% of the planet\'s radius. There is evidence that it is partly molten or liquid. Mercury\'s outer shell, comparable to Earth\'s outer shell (called the mantle and crust), is only about 400 kilometers (250 miles) thick.',
    ),
    (
      title: 'Surface',
      body: 'Mercury\'s surface resembles that of Earth\'s Moon, scarred by many impact craters resulting from collisions with meteoroids and comets. Craters and features on Mercury are named after famous deceased artists, musicians, or authors, including children\'s author Dr. Seuss and dance pioneer Alvin Ailey.\n\nVery large impact basins, including Caloris (960 miles or 1,550 kilometers in diameter) and Rachmaninoff (190 miles, or 306 kilometers in diameter), were created by asteroid impacts on the planet\'s surface early in the solar system\'s history. While there are large areas of smooth terrain, there are also cliffs, some hundreds of miles long and soaring up to a mile high. They rose as the planet\'s interior cooled and contracted over the billions of years since Mercury formed.\n\nMost of Mercury\'s surface would appear greyish-brown to the human eye. The bright streaks are called "crater rays." They are formed when an asteroid or comet strikes the surface. The tremendous amount of energy that is released in such an impact digs a big hole in the ground, and also crushes a huge amount of rock under the point of impact. Some of this crushed material is thrown far from the crater and then falls to the surface, forming the rays. Fine particles of crushed rock are more reflective than large pieces, so the rays look brighter. The space environment - dust impacts and solar-wind particles - causes the rays to darken with time.\n\nTemperatures on Mercury are extreme. During the day, temperatures on the surface can reach 800 degrees Fahrenheit (430 degrees Celsius). Because the planet has no atmosphere to retain that heat, nighttime temperatures on the surface can drop to minus 290 degrees Fahrenheit (minus 180 degrees Celsius).\n\nMercury may have water ice at its north and south poles inside deep craters, but only in regions in permanent shadows. In those shadows, it could be cold enough to preserve water ice despite the high temperatures on sunlit parts of the planet.',
    ),
    (
      title: 'Atmosphere',
      body: 'Instead of an atmosphere, Mercury possesses a thin exosphere made up of atoms blasted off the surface by the solar wind and striking meteoroids. Mercury\'s exosphere is composed mostly of oxygen, sodium, hydrogen, helium, and potassium.',
    ),
    (
      title: 'Magnetosphere',
      body: 'Mercury\'s magnetic field is offset relative to its equator. Though Mercury\'s magnetic field at the surface has just 1% the strength of Earth\'s, it interacts with the magnetic field of the solar wind to sometimes create intense magnetic tornadoes that funnel the fast, hot solar wind plasma down to the surface of the planet. When the ions strike the surface, they knock off neutrally charged atoms and send them on a loop high into the sky.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101416),
      appBar: AppBar(
        title: const Text('Mercury'),
        centerTitle: true,
        backgroundColor: const Color(0xff191f22),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/mercuryyy.webp',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe6101416))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _MercuryHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'Smallest planet, fastest orbit',
                      style: TextStyle(
                        color: Color(0xffe2e8e9),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'A cratered world of blazing days and deep-freeze nights.',
                      style: TextStyle(
                        color: Color(0xffb8c5c9),
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Row(
                      children: [
                        Expanded(
                          child: _MercuryStat(
                            value: '430°C',
                            label: 'DAYTIME HIGH',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _MercuryStat(
                            value: '-180°C',
                            label: 'NIGHTTIME LOW',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _MercuryStat(
                            value: '88 days',
                            label: 'ORBITAL YEAR',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const _MercuryHighlight(
                      icon: Icons.thermostat,
                      label: 'EXTREME TEMPERATURES',
                      title: 'A 610-degree swing',
                      detail: 'With almost no atmosphere to hold heat, the surface swings from 430 C in daylight to -180 C after dark.',
                      color: Color(0xffa9c3cd),
                    ),
                    const SizedBox(height: 10),
                    const _MercuryHighlight(
                      icon: Icons.bolt,
                      label: 'THE FASTEST PLANET',
                      title: 'Around the Sun in 88 days',
                      detail: 'Mercury races along its elongated orbit at nearly 47 kilometers per second, faster than any other planet.',
                      color: Color(0xff8faebd),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Explore Mercury',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ..._sections.map(
                      (section) => _MercurySectionRow(
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

class _MercuryHero extends StatelessWidget {
  const _MercuryHero();

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
            Image.asset(
              'assets/images/mercury-image_final.jpg',
              fit: BoxFit.cover,
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe6101416)],
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
                    'THE FIRST PLANET',
                    style: TextStyle(
                      color: Color(0xffc0d0d5),
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.8,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'MERCURY',
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

class _MercuryStat extends StatelessWidget {
  final String value;
  final String label;

  const _MercuryStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xe61a2225),
        border: Border(top: BorderSide(color: Color(0xffa9c3cd), width: 2)),
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
              color: Color(0xffb7c4c8),
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

class _MercuryHighlight extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final String detail;
  final Color color;

  const _MercuryHighlight({
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
        color: const Color(0xff1d2528).withOpacity(0.96),
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
                    color: Color(0xffd2dcde),
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

class _MercurySectionRow extends StatelessWidget {
  final String title;
  final String body;

  const _MercurySectionRow({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xffa9c3cd),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style: const TextStyle(
              color: Color(0xffd2dcde),
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
