import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'map_provider.dart';

class SmartMapScreen extends StatelessWidget {
  const SmartMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MapProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Logistics & Recycling Map")),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(target: LatLng(37.7749, -122.4194), zoom: 12),
            markers: provider.points.map((p) => Marker(
              markerId: MarkerId(p.id),
              position: LatLng(p.latitude, p.longitude),
              infoWindow: InfoWindow(title: p.name, snippet: "Type: ${p.type}"),
            )).toSet(),
          ),
          if (provider.isLoading) Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}