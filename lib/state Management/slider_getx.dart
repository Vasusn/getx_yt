import 'package:flutter/material.dart';
import 'package:getx_yt/controller/slider_controller.dart';
import 'package:get/get.dart';

class SliderGetx extends StatefulWidget {
  const SliderGetx({super.key});

  @override
  State<SliderGetx> createState() => _SliderGetxState();
}

class _SliderGetxState extends State<SliderGetx> {
  double value = 0;
  final sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX Slider'),
        ),
        body: Obx(
          () => Column(
            children: [
              Slider(
                value: sliderController.sliderValue.value,
                onChanged: (val) {
                  sliderController.updateSliderValue(val);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 100,
                    color: Colors.red
                        .withOpacity(sliderController.sliderValue.value),
                  )),
                  Expanded(
                      child: Container(
                    height: 100,
                    color: Colors.green
                        .withOpacity(sliderController.sliderValue.value),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Value of Slider : ${sliderController.sliderValue.value.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
