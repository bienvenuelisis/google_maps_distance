import 'package:google_maps_distance/src/functions/directions/shortest_route.dart';

import '../../models/leg.dart';

///Get the shortest route leg according to Google Maps between this two points.
///
///@throw [DistanceException].
Future<Leg> shortestLeg(
  double lat1,
  double lng1,
  double lat2,
  double lng2, {
  String? googleAPIKey,
}) async {
  return (await shortestRoute(
    lat1,
    lng1,
    lat2,
    lng2,
    googleAPIKey: googleAPIKey,
  ))
      .shortestLeg;
}
