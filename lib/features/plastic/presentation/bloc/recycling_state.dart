import '../../domain/entities/bin.dart';


abstract class RecyclingState {}

class RecyclingInitial extends RecyclingState {}
class RecyclingProcessing extends RecyclingState {}

/// State shown after points are successfully added to user's account
class RecyclingRewardSuccess extends RecyclingState {
  final int pointsEarned;
  RecyclingRewardSuccess(this.pointsEarned);
}

/// State for the Map/AR view showing all bins
class BinsLoaded extends RecyclingState {
  final List<SmartBin> bins;
  BinsLoaded(this.bins);
}

class RecyclingError extends RecyclingState {
  final String message;
  RecyclingError(this.message);
}