import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MenuGerenteController extends GetxController{
  void goToProductosRechazados(){
    Get.toNamed('/productsRechazados');
  }

  void goToProductosAutorizados(){
    Get.toNamed('/gerente/productsAutorizados');
  }

  void signOut() {
    GetStorage().remove('user');
    Get.offNamedUntil(
        '/', (route) => false); //ELIMINA EL HISTORIAL DE PANTALLAS
  }
}