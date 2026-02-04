import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_nearby_center.dart';
import 'ar_event.dart';
import 'ar_state.dart';

class ArNavigationBloc extends Bloc<ArNavigationEvent, ArNavigationState> {
  final GetNearbyCenters getNearbyCenters;

  ArNavigationBloc({required this.getNearbyCenters}) : super(ArInitial()) {
    on<LoadNearbyCentersEvent>((event, emit) async {
      emit(ArLoadingLocations());
      try {
        final centers = await getNearbyCenters(event.lat, event.lng);
        emit(ArLocationsLoaded(centers));
      } catch (e) {
        emit(ArError(e.toString()));
      }
    });
  }
}