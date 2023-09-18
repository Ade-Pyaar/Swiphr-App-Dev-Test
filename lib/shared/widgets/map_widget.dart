import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    super.key,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: const LatLng(6.465422, 3.406448),
        zoom: 9.2,
      ),
      // nonRotatedChildren: const [
      //   RichAttributionWidget(
      //     attributions: [
      //       TextSourceAttribution(
      //         'OpenStreetMap contributors',
      //         onTap: null,
      //       ),
      //     ],
      //   ),
      // ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
      ],
    );
  }
}
