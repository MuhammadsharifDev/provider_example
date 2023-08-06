import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_exam/provider/counter_view_model.dart';
import 'package:provider_simple_exam/provider/provider_counter.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:ChangeNotifierProvider<CounterViewModel>(
        create: (_) => CounterViewModel(),
        child: const ProviderCounter(),
      ),
      );

  }
}

