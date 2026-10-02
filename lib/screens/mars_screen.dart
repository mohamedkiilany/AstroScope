import 'package:flutter/material.dart';

class MarsScreen extends StatelessWidget {
  const MarsScreen({super.key});

  static const _sections = [
    (
      title: 'A world shaped by water',
      eyebrow: 'INTRODUCTION',
      body: 'Mars is the only planet beyond Earth where we have sent rovers to explore the surface. NASA missions have found evidence that billions of years ago it was warmer and wetter, with a thicker atmosphere.',
    ),
    (
      title: 'The Red Planet',
      eyebrow: 'NAMESAKE',
      body: 'The ancient Romans named Mars for their god of war, reminded by its red color of blood. The Egyptians called it "Her Desher," meaning "the red one." Iron minerals in Martian rocks, soil, and dust oxidize, or rust, giving the planet its familiar hue.',
    ),
    (
      title: 'Clues, not life as we know it',
      eyebrow: 'POTENTIAL FOR LIFE',
      body: 'Scientists are not expecting to find living things thriving on Mars today. The search is for signs of ancient life, from a time when liquid water flowed across a warmer planet.',
    ),
    (
      title: 'A smaller neighbor',
      eyebrow: 'SIZE & DISTANCE',
      body: 'Mars has a radius of 2,106 miles (3,390 kilometers), about half the size of Earth. If Earth were a nickel, Mars would be about as big as a raspberry. It orbits an average of 142 million miles (228 million kilometers) from the Sun, or 1.5 AU. Sunlight takes about 13 minutes to reach it.',
    ),
    (
      title: 'A day called a sol',
      eyebrow: 'ORBIT & ROTATION',
      body: 'One Martian rotation takes 24.6 hours. A Martian day, or sol, is close to an Earth day, but a year lasts 669.6 sols, or 687 Earth days. Its axis tilts 25 degrees, giving Mars seasons like Earth\'s, though they last longer and vary in length because its orbit is elliptical. Northern spring is longest at 194 sols; northern autumn is shortest at 142 sols. Northern winter lasts 154 sols and northern summer 178 sols.',
    ),
    (
      title: 'Two tiny companions',
      eyebrow: 'MOONS',
      body: 'Phobos and Deimos may be captured asteroids. Both are too small for gravity to pull them into spheres, so they have irregular, potato-like shapes. Their names come from the horses of Ares, the Greek god of war. Heavily cratered Phobos is slowly moving toward Mars and may crash into it or break apart in about 50 million years. Deimos is about half its size and orbits two and a half times farther away; loose surface material makes it look smoother.',
    ),
    (
      title: 'No rings, for now',
      eyebrow: 'RINGS',
      body: 'Mars has no rings today. If Phobos breaks apart or falls into Mars in about 50 million years, its debris could form a dusty ring around the planet.',
    ),
    (
      title: 'Built from the early solar system',
      eyebrow: 'FORMATION',
      body: 'About 4.5 billion years ago, gravity gathered swirling gas and dust into Mars, the fourth planet from the Sun. Like the other rocky planets, it developed a central core, a mantle, and a solid crust.',
    ),
    (
      title: 'A layered interior',
      eyebrow: 'STRUCTURE',
      body: 'Mars has a dense core of iron, nickel, and sulfur with a radius of about 930 to 1,300 miles (1,500 to 2,100 kilometers). A rocky mantle surrounds it, about 770 to 1,170 miles (1,240 to 1,880 kilometers) thick. The crust, made of iron, magnesium, aluminum, calcium, and potassium, is about 6 to 30 miles (10 to 50 kilometers) deep.',
    ),
    (
      title: 'Canyons, volcanoes & ancient water',
      eyebrow: 'SURFACE',
      body: 'Mars shows many colors, including brown, gold, and tan; oxidized iron-rich dust makes it look red from a distance. Its surface area is nearly as large as Earth\'s dry land. Valles Marineris stretches about 2,400 miles (3,870 kilometers), reaches 370 miles (600 kilometers) across, and descends 5.8 miles (9.3 kilometers). Olympus Mons rises more than 25 miles (40 kilometers) above the surface, making it the solar system\'s largest volcano. Ancient valleys, deltas, lakebeds, and water-formed minerals point to a wetter past, including possible massive floods around 3.5 billion years ago. Today, water is found as subsurface polar ice and seasonal briny flows; the thin atmosphere cannot sustain liquid water at the surface for long.',
    ),
    (
      title: 'A thin, dusty sky',
      eyebrow: 'ATMOSPHERE',
      body: 'Mars has a sparse atmosphere made mostly of carbon dioxide, nitrogen, and argon. Suspended dust would make the sky look hazy and red, and the thin air offers little protection from incoming space rocks. Temperatures range from about 70 F (20 C) to -225 F (-153 C). Strong winds can raise dust storms that spread across much of the planet, with dust sometimes taking months to settle.',
    ),
    (
      title: 'An ancient magnetic trace',
      eyebrow: 'MAGNETOSPHERE',
      body: 'Mars has no global magnetic field today. But highly magnetized areas of crust in the southern hemisphere preserve traces of a magnetic field that existed about four billion years ago.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150b0a),
      appBar: AppBar(
        title: const Text('Mars'),
        centerTitle: true,
        backgroundColor: const Color(0xff24100e),
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/marss.webp', fit: BoxFit.cover),
          ),
          const Positioned.fill(child: ColoredBox(color: Color(0xe6150b0a))),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _MarsHero(),
                    const SizedBox(height: 18),
                    const Text(
                      'A rugged world with a watery past',
                      style: TextStyle(
                        color: Color(0xfff0deda),
                        fontSize: 17,
                        height: 1.35,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: _MarsStat(
                            value: '24.6 hrs',
                            label: 'A MARTIAN DAY',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _MarsStat(
                            value: '687 days',
                            label: 'A MARTIAN YEAR',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _MarsStat(
                            value: '2 moons',
                            label: 'PHOBOS + DEIMOS',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Explore Mars',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          'THE FOURTH PLANET',
                          style: TextStyle(
                            color: Color(0xffe35a45),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ..._sections.map(
                      (section) => _MarsSection(
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

class _MarsHero extends StatelessWidget {
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
            Image.asset('assets/images/marss.webp', fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xe6150b0a)],
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
                    'THE RED PLANET',
                    style: TextStyle(
                      color: Color(0xffff8069),
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'MARS',
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

class _MarsStat extends StatelessWidget {
  final String value;
  final String label;

  const _MarsStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 76),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff291412).withValues(alpha:0.94),
        border: const Border(
          top: BorderSide(color: Color(0xffe35a45), width: 2),
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
              color: Color(0xffd7b8b2),
              fontSize: 8,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}

class _MarsSection extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String body;

  const _MarsSection({
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
              color: Color(0xffed7059),
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
              color: Color(0xffe2d6d2),
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
