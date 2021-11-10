import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelling_dong/cubit/transaction_cubit.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/widgets/transaction_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.isEmpty) {
            return Center(
              child: Text(
                'Transaction is empty',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: extraBold,
                ),
              ),
            );
          } else if (state.transactions.isNotEmpty) {
            return SafeArea(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMarginPadding,
                ),
                itemCount: state.transactions.length,
                itemBuilder: (context, index) {
                  return TransactionCard(state.transactions[index]);
                },
              ),
            );
          }
        }
        return Container();
      },
    );
  }
}
