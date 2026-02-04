abstract class RecyclingEvent {}

/// Triggered when the user is at the bin and initiates the deposit
class ConfirmDepositEvent extends RecyclingEvent {
  final String binId;
  final double weight;
  ConfirmDepositEvent({required this.binId, required this.weight});
}

/// Triggered to refresh the real-time fill levels of nearby bins
class RefreshBinStatusEvent extends RecyclingEvent {}