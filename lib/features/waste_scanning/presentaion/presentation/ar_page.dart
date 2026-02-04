import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArViewPage extends StatefulWidget {
  final double estimatedPrice;
  final String composition;

  const ArViewPage({super.key, required this.estimatedPrice, required this.composition});

  @override
  State<ArViewPage> createState() => _ArViewPageState();
}

class _ArViewPageState extends State<ArViewPage> {
  ARSessionManager? arSessionManager;
  ARObjectManager? arObjectManager;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AR Analysis & Navigation")),
      body: Stack(
        children: [
          ARView(
            onARViewCreated: onARViewCreated,
          ),
          // HUD Overlay for details
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(12),
              color: Colors.black54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Composition: ${widget.composition}", style: const TextStyle(color: Colors.white)),
                  Text("Est. Value: \$${widget.estimatedPrice}", 
                       style: const TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onARViewCreated(ARSessionManager arSessionManager, ARObjectManager arObjectManager, 
      ARAnchorManager arAnchorManager, ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;

    this.arSessionManager!.onInitialize(
      showFeaturePoints: false,
      showPlanes: true,
      showWorldOrigin: true,
    );
    this.arObjectManager!.onInitialize();

    _addPriceTagToWorld();
  }

  // Adds a 3D Floating Text Node in AR space
  Future<void> _addPriceTagToWorld() async {
    var newNode = ARNode(
      type: NodeType.localGLTF2, 
      uri: ".gltf", 
      position: vector.Vector3(0, 0, -0.5),
      scale: vector.Vector3(0.2, 0.2, 0.2),
    );
    await arObjectManager!.addNode(newNode);
  }
}