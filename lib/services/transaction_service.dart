import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelling_dong/models/transaction_model.dart';

class TransactionService {
  final CollectionReference _transactionRef =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionRef.add({
        'destinations': transaction.destination.toJson(),
        'amountOfperson': transaction.amountOfperson,
        'selectedSeats': transaction.selectedSeats,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<List<TransactionModel>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionRef.get();

      List<TransactionModel> transactions = result.docs.map((e) {
        return TransactionModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return transactions;
    } catch (e) {
      rethrow;
    }
  }
}
