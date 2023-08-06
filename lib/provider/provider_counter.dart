import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_exam/provider/counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Provider_Example')),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Yo're clicking button many times"),
            Text("${context.watch<CounterViewModel>().count}",style: const TextStyle(fontSize: 35),),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: ()=>context.read<CounterViewModel>().increment(),
            child: const Icon(Icons.add),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.005,
          ),
          FloatingActionButton(
              onPressed: () => context.read<CounterViewModel>().decrement(),
            child: const Icon(Icons.minimize),
          )
        ],
      ),

    );
  }
}
