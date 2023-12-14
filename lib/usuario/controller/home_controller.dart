import 'package:app_inventario/usuario/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

class HomeController extends GetxController{

  User user = User.fromJson(GetStorage().read('user') ?? {});

  HomeController(){
    print('USUARIO DE SESION ${user.toJson()}');
  }

  void goToPage(String rol, BuildContext context){
    ProgressDialog progressDialog = ProgressDialog(context: context);
    progressDialog.show(max: 300, msg: 'Validando los datos....');
    progressDialog.close();
    if(rol == 'Empleado'){
      Get.toNamed('/products');
    } else {
      Get.toNamed('/gerente');
    }
  }

  void signOut() {
    GetStorage().remove('user');
    Get.offNamedUntil(
        '/', (route) => false); //ELIMINA EL HISTORIAL DE PANTALLAS
  }


}