import 'package:google_maps_distance/src/functions/directions/shortest_leg.dart';

import '../../models/distance_value.dart';

///Get the shortest distance according to Google Maps between this two points.
///
///@throw [DistanceException].
///
/// Example:
///
/// ```dart
/// import "package:google_maps_distance/google_maps_distance.dart" as gmp;
///
/// int distanceMeters = await gmp.distanceInMeters(9.2460524, 1.2144565, 6.1271617, 1.2345417);
/// print(distance.meters);//373240
/// print(distance.text);//"373 km"
/// ```
/// {@end-tool}
Future<DistanceValue> distance(
  double lat1,
  double lng1,
  double lat2,
  double lng2, {
  String? googleAPIKey,
}) async {
  return (await shortestLeg(
    lat1,
    lng1,
    lat2,
    lng2,
    googleAPIKey: googleAPIKey,
  ))
      .distance;
}

///Get the shortest distance (in meters) according to Google Maps between this two points.
///
///@throw [DistanceException].
///
/// Example:
///
/// ```dart
/// import "package:google_maps_distance/google_maps_distance.dart" as gmp;
///
/// int distanceMeters = await gmp.distanceInMeters(9.2460524, 1.2144565, 6.1271617, 1.2345417);
/// print(distance);//373240
/// ```
/// {@end-tool}
Future<int> distanceInMeters(
  double lat1,
  double lng1,
  double lat2,
  double lng2, {
  String? googleAPIKey,
}) async {
  return (await distance(
    lat1,
    lng1,
    lat2,
    lng2,
    googleAPIKey: googleAPIKey,
  ))
      .meters;
}

///Get the shortest route distance (text) according to Google Maps between this two points.
///
///@throw [DistanceException].
///
/// {@tool snippet}
///
/// Example:
///
/// ```dart
/// import "package:google_maps_distance/google_maps_distance.dart" as gmp;
///
/// String textInKmOrMeters = await gmp.distanceText(9.2460524, 1.2144565, 6.1271617, 1.2345417);
/// print(textInKmOrMeters);//"373 km"
/// ```
/// {@end-tool}
Future<String> distanceText(
  double lat1,
  double lng1,
  double lat2,
  double lng2, {
  String? googleAPIKey,
}) async {
  return (await distance(
    lat1,
    lng1,
    lat2,
    lng2,
    googleAPIKey: googleAPIKey,
  ))
      .text;
}
