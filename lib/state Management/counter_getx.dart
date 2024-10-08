import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_yt/controller/counter_controller.dart';

class CounterGetx extends StatefulWidget {
  const CounterGetx({super.key});

  @override
  State<CounterGetx> createState() => _CounterGetxState();
}

class _CounterGetxState extends State<CounterGetx> {
  final counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter'),
      ),
      body: Center(
        child: Obx(
          () => Text(
          counterController.counter.toString(),
          style: const TextStyle(fontSize: 30),
        ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
