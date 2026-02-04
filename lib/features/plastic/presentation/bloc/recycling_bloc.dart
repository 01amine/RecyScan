import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:recyscan/features/plastic/domain/entities/bin.dart';
import 'package:recyscan/features/waste_scanning/domain/usecases/get_nearby_center.dart';
import '../../domain/usecases/deposit_earn.dart';

import 'recycling_event.dart';
import 'recycling_state.dart';

class RecyclingBloc extends Bloc<RecyclingEvent, RecyclingState> {
  final DepositPlasticAndEarn depositUseCase;
  final GetNearbyCenters getNearbyBinsUseCase;

  RecyclingBloc({
    required this.depositUseCase,
    required this.getNearbyBinsUseCase,
  }) : super(RecyclingInitial()) {
    
    // Handle loading bins for Map/AR
    on<RefreshBinStatusEvent>((event, emit) async {
      try {
        //final bins = await getNearbyBinsUseCase();
        //emit(BinsLoaded(bins.cast<SmartBin>()));
      } catch (e) {
        emit(RecyclingError("Failed to fetch smart bin status."));
      }
    });

    // Handle the actual recycling transaction
    on<ConfirmDepositEvent>((event, emit) async {
      emit(RecyclingProcessing());
      try {
        final points = await depositUseCase.execute(event.binId, event.weight);
        emit(RecyclingRewardSuccess(points));
      } catch (e) {
        
        emit(RecyclingError(e.toString()));
      }
    });
  }
}