import 'package:get/get.dart';
class SwitchController extends GetxController{

  RxBool switchValue = false.obs;

  void changeValue(){
    switchValue.value = !switchValue.value;
  }
}