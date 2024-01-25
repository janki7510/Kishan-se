import 'package:get/get.dart';
import 'package:kishan_se/utils/popups/network_manager.dart';


class GeneralBindings extends Bindings{
  @override
  void dependencies(){
    Get.put(NetworkManager());
  }
}