part of 'position_cubit.dart';

abstract class PositionState {}

class PositionInitial extends PositionState {}

class PositionReady extends PositionState {
  final Position position;

  PositionReady(this.position);
}

class PositionPermissionDeny extends PositionState {}
