import 'package:astroscope/models/planets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesCubit extends Cubit<List<Planet>> {
  FavoritesCubit() : super(const []);

  bool isFavorite(Planet planet) {
    return state.any((favorite) => favorite.name == planet.name);
  }

  void toggleFavorite(Planet planet) {
    if (isFavorite(planet)) {
      emit(state.where((favorite) => favorite.name != planet.name).toList());
      return;
    }

    emit([...state, planet]);
  }
}
