import 'package:app_inventario/gerente/models/detailEscasez.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../providers/gerente_providers.dart';

class DetalleEscasezXAutorizarController extends GetxController{
  //TextEditingController cantidadController = TextEditingController();
  DetailsEscasez detailsEscasez = DetailsEscasez.fromJson(GetStorage().read('escasez') ?? {});
  GerenteProviders gerenteProviders = GerenteProviders();

  User user = User.fromJson(GetStorage().read('user') ?? {});

  void autorizar(BuildContext context) async{
    ProgressDialog progressDialog = ProgressDialog(context: context);
      progressDialog.show(max: 800, msg: 'Registrando Datos....');
      ResponseApi responseApi = await gerenteProviders.autorizar(detailsEscasez);
      progressDialog.close();

      if (responseApi.estatus == true) {
        
        Get.snackbar(
            'Petición correcta', responseApi.message ?? '',
            backgroundColor: Color.fromARGB(255, 42, 53, 214),
            colorText: Colors.white,
            duration: const Duration(seconds: 4, milliseconds: 1000),
            icon: const Icon(Icons.add_task_rounded));

        goToInicio();
      } else {
        Get.snackbar(
            'Error en la petición', responseApi.message ?? 'Sin Conexión al Servidor',
            backgroundColor: const Color(0xFFD62A2C),
            colorText: Colors.white,
            duration: const Duration(seconds: 4, milliseconds: 1000),
            icon: const Icon(Icons.cancel_outlined));
        
      }

  }

   void goToInicio(){
    Get.toNamed('/gerente');
  }


}