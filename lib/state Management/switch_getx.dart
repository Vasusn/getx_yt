import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_yt/controller/switch_controller.dart';


class SwitchGetx extends StatefulWidget {
  const SwitchGetx({super.key});

  @override
  State<SwitchGetx> createState() => _SwitchGetxState();
}

class _SwitchGetxState extends State<SwitchGetx> {
  
  final switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Switch'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Obx(()=> Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification",
                    style: TextStyle(
                        fontSize: 20,
                        color: switchController.switchValue.value ? Colors.green : Colors.red)),
                Switch(
                  value: switchController.switchValue.value,
                  onChanged: (val) {
                    switchController.changeValue();
                  },
                ),
              ],
            ),)
          )
        ],
      ),
    );
  }
}