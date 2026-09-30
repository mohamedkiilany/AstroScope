import 'package:astroscope/database/db.dart';
import 'package:astroscope/models/planets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesCubit extends Cubit<List<Planet>> {
  FavoritesCubit() : super([]) {
    loadPlanets();
  }

  Future<void> loadPlanets() async {
    final planets = Db.getFavorites();
    emit(planets);
  }

  bool isFavorite(Planet planet) {
    return state.any((favorite) => favorite.name == planet.name);
  }

  void toggleFavorite(Planet planet) async {
    if (isFavorite(planet)) {
      emit(state.where((favorite) => favorite.name != planet.name).toList());
      await Db.deleteFavorite(planet);
      return;
    }

    emit([...state, planet]);
    await Db.addFavorite(planet);
  }
}
