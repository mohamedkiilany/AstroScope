// import 'package:astroscope/models/planets.dart';
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

class PlanetOfTheDay extends StatelessWidget {
  final Planet planet;

  const PlanetOfTheDay({super.key, required this.planet});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff091522).withOpacity(0.56),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Planet of the day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              BlocBuilder<FavoritesCubit, List<Planet>>(
                builder: (context, favorites) {
                  final isFavorite = context.read<FavoritesCubit>().isFavorite(
                    planet,
                  );

                  return IconButton(
                    tooltip: isFavorite
                        ? 'Remove from favorites'
                        : 'Add to favorites',
                    onPressed: () {
                      context.read<FavoritesCubit>().toggleFavorite(planet);
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: const Color(0xff11DCE8),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(planet.imagePath),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      planet.name,
                      style: TextStyle(
                        color: Color(0xff11DCE8),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      planet.description,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              if (planet.name == "Mercury") {
                                return const MercuryScreen();
                              }
                              if (planet.name == 'Earth') {
                                return const EarthScreen();
                              }
                              if (planet.name == 'Venus') {
                                return const VenusScreen();
                              }
                              if (planet.name == "Mars") {
                                return const MarsScreen();
                              }
                              if (planet.name == "Jupiter") {
                                return const JupiterScreen();
                              }
                              if (planet.name == "Saturn") {
                                return const SaturnScreen();
                              }
                              if (planet.name == "Uranus") {
                                return const UranusScreen();
                              } else {
                                return const NeptuneScreen();
                              }
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Color(0xff11DCE8)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
