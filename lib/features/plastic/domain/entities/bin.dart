class SmartBin {
  final String id;
  final double lat;
  final double lng;
  final double fillLevel; 
  final bool isFull;

  SmartBin({required this.id, required this.lat, required this.lng, required this.fillLevel})
      : isFull = fillLevel >= 0.95;
}