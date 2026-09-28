import 'dart:ui' show ImageFilter;

import 'package:astroscope/models/planets.dart';
import 'package:astroscope/screens/earth_screen.dart';
import 'package:astroscope/screens/jupiter_screen.dart';
import 'package:astroscope/screens/mars_screen.dart';
import 'package:astroscope/screens/mercury_screen.dart';
import 'package:astroscope/screens/neptune-screen.dart';
import 'package:astroscope/screens/saturn-screen.dart';
import 'package:astroscope/screens/uranus_screen.dart';
import 'package:astroscope/screens/venus_screen.dart';
import 'package:astroscope/state/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05070d),
      appBar: AppBar(
        backgroundColor: const Color(0x66070d18),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Saved Worlds',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.gif',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xc80a1221),
                    Color(0xb808111e),
                    Color(0xe6050912),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: BlocBuilder<FavoritesCubit, List<Planet>>(
              builder: (context, favorites) {
                if (favorites.isEmpty) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(maxWidth: 420),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 26,
                              vertical: 34,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0x1fffffff),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0x45ffffff),
                              ),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.nights_stay_outlined,
                                  color: Color(0xffd6e2f2),
                                  size: 42,
                                ),
                                SizedBox(height: 14),
                                Text(
                                  'No saved worlds yet',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Your favorite planets will appear here.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xffc5d0df),
                                    fontSize: 14,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(18, 16, 18, 28),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final planet = favorites[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (_) => switch (planet.name) {
                                'Mercury' => const MercuryScreen(),
                                'Venus' => const VenusScreen(),
                                'Earth' => const EarthScreen(),
                                'Mars' => const MarsScreen(),
                                'Jupiter' => const JupiterScreen(),
                                'Saturn' => const SaturnScreen(),
                                'Uranus' => const UranusScreen(),
                                'Neptune' => const NeptuneScreen(),
                                _ => const FavoritesScreen(),
                              },
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
                            child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                color: const Color(0x20ffffff),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: const Color(0x45ffffff),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x28000000),
                                    blurRadius: 18,
                                    offset: Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0x88dce8f5),
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 29,
                                      backgroundColor: const Color(0xff111a29),
                                      backgroundImage: AssetImage(
                                        planet.imagePath,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 13),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          planet.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          planet.description,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Color(0xffd0d8e5),
                                            fontSize: 12,
                                            height: 1.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  IconButton(
                                    tooltip: 'Remove from favorites',
                                    onPressed: () {
                                      context
                                          .read<FavoritesCubit>()
                                          .toggleFavorite(planet);
                                    },
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Color(0xffd9e4f1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
