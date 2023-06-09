import 'package:google_maps_distance/src/gmp.dart';

import '../../models/directions.dart';
import '../../models/point.dart';
import '../../repositories/directions_repository.dart';

///Get the shortest route according to Google Maps between this two points.
///
///@throw [DistanceException].
Future<Directions> getDirections(
  double lat1,
  double lng1,
  double lat2,
  double lng2, {
  String? googleAPIKey,
  String? mode,
  String? language,
}) async {
  return await DirectionsRepository().get(
    origin: Point(lat: lat1, lng: lng1),
    destination: Point(lat: lat2, lng: lng2),
    googleAPIKey: googleAPIKey ?? GoogleMapsDistance.googleApiKey,
    mode: mode,
    language: language,
  );
}
