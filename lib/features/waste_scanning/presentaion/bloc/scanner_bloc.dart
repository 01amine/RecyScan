import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/estimate_waste_value.dart';
import 'scanner_event.dart';
import 'scanner_state.dart';

class ScannerBloc extends Bloc<ScannerEvent, ScannerState> {
  final EstimateWasteValue estimateWasteValue;

  ScannerBloc({required this.estimateWasteValue}) : super(ScannerInitial()) {
    on<ScanImageEvent>((event, emit) async {
      emit(ScannerLoading());
      try {
        final result = await estimateWasteValue.execute(event.image);
        emit(ScannerSuccess(result));
      } catch (e) {
        emit(ScannerError(e.toString()));
      }
    });
  }
}
