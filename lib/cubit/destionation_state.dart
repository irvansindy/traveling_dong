part of 'destionation_cubit.dart';

abstract class DestionationState extends Equatable {
  const DestionationState();

  @override
  List<Object> get props => [];
}

class DestionationInitial extends DestionationState {}

class DestionationLoading extends DestionationState {}

class DestionationSuccess extends DestionationState {
  final List<DestinationModel> destinations;

  // ignore: prefer_const_constructors_in_immutables
  DestionationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestionationFailed extends DestionationState {
  final String error;

  // ignore: prefer_const_constructors_in_immutables
  DestionationFailed(this.error);

  @override
  List<Object> get props => [error];
}
