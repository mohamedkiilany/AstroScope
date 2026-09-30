import 'package:astroscope/models/planets.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'planets_adapter.dart';

class Db {
  static const boxName = "planets";

  static Future<void> init() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PlanetAdapter());
    }
    await Hive.openBox<Planet>(boxName);
  }

  static List<Planet> getFavorites() {
    return Hive.box<Planet>(boxName).values.toList();
  }

  static Future<void> addFavorite(Planet planet) async {
    await Hive.box<Planet>(boxName).put(planet.name, planet);
  }
  static Future<void> deleteFavorite(Planet planet) async{
    await Hive.box<Planet>(boxName).delete(planet.name);
  }

}
