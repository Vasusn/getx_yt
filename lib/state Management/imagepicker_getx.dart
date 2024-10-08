import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getx_yt/controller/image_controller.dart';
import 'package:get/get.dart';

class ImagepickerGetx extends StatefulWidget {
  const ImagepickerGetx({super.key});

  @override
  State<ImagepickerGetx> createState() => _ImagepickerGetxState();
}

class _ImagepickerGetxState extends State<ImagepickerGetx> {
  final imageController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Image Picker'),
      ),
      body: Obx(() => Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: imageController.imagePath.isNotEmpty
                      ? FileImage(File(imageController.imagePath.value))
                      : null,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      imageController.getImage();
                    },
                    child: const Text('Pick Image')),
              ],
            ),
      )),
    );
  }
}
