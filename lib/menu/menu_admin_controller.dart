import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MenuAdminController extends GetxController{

  void goToInsertProv(){
    Get.toNamed('/admin/provInsertar');
  }

  void goToHome(){
    Get.toNamed('/admin/provList');
  }


  void signOut() {
    GetStorage().remove('user');
    Get.offNamedUntil(
        '/', (route) => false); //ELIMINA EL HISTORIAL DE PANTALLAS
  }
}