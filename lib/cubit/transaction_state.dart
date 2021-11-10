part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSuccess extends TransactionState {
  final List<TransactionModel> transactions;

  // ignore: prefer_const_constructors_in_immutables
  TransactionSuccess(this.transactions);
  
  @override
  List<Object> get props => [transactions];
}

class TransactionFailed extends TransactionState {
  final String error;

  // ignore: prefer_const_constructors_in_immutables
  TransactionFailed(this.error);

  @override
  List<Object> get props => [error];
}
