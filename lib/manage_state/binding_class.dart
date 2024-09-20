import 'package:food_app/manage_state/Statemanage_class.dart';
import 'package:get/get.dart';

class BindingClass extends Bindings {
  @override
  void dependencies() {
    Get.put<ManageState>(ManageState());
  }
}
