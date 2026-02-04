import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/deposit_earn.dart';
import 'recycling_event.dart';
import 'recycling_state.dart';

class RecyclingBloc extends Bloc<RecyclingEvent, RecyclingState> {
  final DepositPlasticAndEarn depositUseCase;

  RecyclingBloc(this.depositUseCase) : super(RecyclingInitial()) {
    on<ConfirmDepositEvent>((event, emit) async {
      emit(RecyclingProcessing());
      try {
        final points = await depositUseCase.execute(event.binId, event.weight);
        emit(RecyclingRewardSuccess(points));
      } catch (e) {
        emit(RecyclingError("Sensor timeout: Try again"));
      }
    });
  }
}
