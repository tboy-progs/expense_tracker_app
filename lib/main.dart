import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:expense_tracker_app/home_page.dart';
import 'package:expense_tracker_app/data/expense_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
