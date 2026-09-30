import 'package:astroscope/models/planets.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PlanetAdapter extends TypeAdapter<Planet> {
  @override
  final int typeId = 0;

  @override
  Planet read(BinaryReader reader) {
    return Planet(
      name: reader.readString(),
      imagePath: reader.readString(),
      description: reader.readString(),
      facts: PlanetMetrics(
        mass: reader.readString(),
        gravity: reader.readString(),
        rotationHours: reader.readString(),
        escapeVelocity: reader.readString(),
        meanTemperature: reader.readString(),
        distanceFromSun: reader.readString(),
      ),
    );
  }

  @override
  void write(BinaryWriter writer, Planet obj) {
    writer.writeString(obj.name);
    writer.writeString(obj.imagePath);
    writer.writeString(obj.description);
    writer.writeString(obj.facts.mass);
    writer.writeString(obj.facts.gravity);
    writer.writeString(obj.facts.rotationHours);
    writer.writeString(obj.facts.escapeVelocity);
    writer.writeString(obj.facts.meanTemperature);
    writer.writeString(obj.facts.distanceFromSun);
  }
}
