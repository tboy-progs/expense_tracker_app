import 'package:expense_tracker_app/bar%20graph/bar_graph.dart';
import 'package:expense_tracker_app/data/expense_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpenseSummary extends StatelessWidget {
  const ExpenseSummary({
    super.key,
    required this.startOfWeek,
  });

  final DateTime startOfWeek;

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
      builder: (context, value, child) => SizedBox(
        height: 200,
        child: MyBarGraph(
          maxY: 100,
          sunAmount: 30,
          monAmount: 50,
          tueAmount: 10,
          wedAmount: 20,
          thuAmount: 90,
          friAmount: 20,
          satAmount: 10,
        ),
      ),
    );
  }
}
