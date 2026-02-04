import '../../domain/entities/recycling_center.dart';

abstract class ArNavigationState {}

class ArInitial extends ArNavigationState {}
class ArLoadingLocations extends ArNavigationState {}
class ArLocationsLoaded extends ArNavigationState {
  final List<RecyclingCenter> centers;
  ArLocationsLoaded(this.centers);
}
class ArError extends ArNavigationState {
  final String message;
  ArError(this.message);
}