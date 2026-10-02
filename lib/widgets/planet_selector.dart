import 'package:astroscope/models/planets.dart';
import 'package:flutter/material.dart';

class PlanetSelector extends StatelessWidget {
  final int selectedPlanetIndex;
  final ValueChanged<int> onPlanetSelected;

  const PlanetSelector({
    super.key,
    required this.selectedPlanetIndex,
    required this.onPlanetSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: planets.length,
        itemBuilder: (context, index) {
          final planet = planets[index];

          final isSelected = index == selectedPlanetIndex;

          return GestureDetector(
            onTap: () {
              onPlanetSelected(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    // ? Colors.white.withOpacity(0.2)
                    ? Color(0xff091522).withValues(alpha:0.56)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: isSelected ? Colors.white24 : Colors.transparent,
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(planet.imagePath),
                  ),

                  const SizedBox(width: 7),

                  Text(
                    planet.name,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.white60,
                      fontWeight: isSelected
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
