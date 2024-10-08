import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaunguageScreen extends StatelessWidget {
  const LaunguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Launguage'),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            Row(
              children: [ 
                OutlinedButton(onPressed: (){
                  Get.updateLocale(const Locale('en', 'US'));
                }, child: const Text('English')),
                OutlinedButton(onPressed: (){
                  Get.updateLocale(const Locale('gu', 'IN'));
                }, child: const Text('Gujrati')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
