import 'package:astroscope/screens/favorites_screen.dart';
import 'package:astroscope/state/favorites_cubit.dart';
import 'package:astroscope/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff07111f).withValues(alpha:0.38),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 16, 10),
        child: Row(
          children: [
            const Expanded(
              child: Text(
                'Solar System',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            BlocBuilder<FavoritesCubit, List>(
              builder: (context, favorites) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    IconButtom(
                      icon: favorites.isEmpty
                          ? Icons.favorite_border
                          : Icons.favorite,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const FavoritesScreen(),
                          ),
                        );
                      },
                    ),
                    if (favorites.isNotEmpty)
                      Positioned(
                        top: -5,
                        right: -4,
                        child: Container(
                          constraints: const BoxConstraints(minWidth: 18),
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          height: 18,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff11DCE8),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${favorites.length}',
                            style: const TextStyle(
                              color: Color(0xff05111a),
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
