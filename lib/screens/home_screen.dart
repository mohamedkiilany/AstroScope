import 'package:astroscope/models/planets.dart';
import 'package:astroscope/widgets/app_bar.dart';
import 'package:astroscope/widgets/home_intro.dart';
import 'package:astroscope/widgets/planet_of_the_day.dart';
import 'package:astroscope/widgets/planet_facts.dart';
import 'package:astroscope/widgets/planet_selector.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPlanetIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05070d),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff05070d).withValues(alpha:0.82),
                    const Color(0xff07111f).withValues(alpha:0.48),
                    const Color(0xff05070d).withValues(alpha:0.94),
                  ],
                  stops: const [0, 0.48, 1],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const RepaintBoundary(child: AppBarWidget()),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(20, 28, 20, 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomeIntro(),
                        const SizedBox(height: 28),
                        const Text(
                          'Choose a planet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const SizedBox(height: 12),
                        RepaintBoundary(
                          child: PlanetSelector(
                            selectedPlanetIndex: _selectedPlanetIndex,
                            onPlanetSelected: (index) {
                              setState(() {
                                _selectedPlanetIndex = index;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          'Featured world',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const SizedBox(height: 12),
                        RepaintBoundary(
                          child: PlanetOfTheDay(
                            planet: planets[_selectedPlanetIndex],
                          ),
                        ),
                        const SizedBox(height: 8),
                        RepaintBoundary(
                          child: PlanetFacts(
                            planet: planets[_selectedPlanetIndex],
                          ),
                        ),
                      ],
                    ),
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
