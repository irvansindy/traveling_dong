import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelling_dong/models/transaction_model.dart';
import 'package:travelling_dong/services/transaction_service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionInitial());
      await TransactionService().createTransaction(transaction);
      // ignore: prefer_const_literals_to_create_immutables
      emit(TransactionSuccess([]));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransactions() async {
    try {
      emit(TransactionLoading());
      List<TransactionModel> transactions =
          await TransactionService().fetchTransactions();
      emit(TransactionSuccess(transactions));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
