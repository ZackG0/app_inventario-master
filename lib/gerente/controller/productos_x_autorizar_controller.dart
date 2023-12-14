import 'dart:async';

import 'package:app_inventario/gerente/models/detailEscasez.dart';
import 'package:app_inventario/gerente/models/escasez.dart';
import 'package:app_inventario/gerente/providers/gerente_providers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';

class ProductosXAutorizarController extends GetxController{
  User user = User.fromJson(GetStorage().read('user') ?? {});

  GerenteProviders gerenteProviders = GerenteProviders();

   // CONTROLADORES DE LOS CAMPOS DE TEXTOS
  TextEditingController nombreProducto = TextEditingController();
  var nomProduct = ''.obs;
  Timer? searchOnStoppedTyping;

  void goToDetalle(){
    Get.toNamed('/gerente/detailXAutorizar');
  }

  void detalle(int id, BuildContext context) async {
    //ALAMACENA LA RESPUESTA QUE DA EL SERVIDOR, ESPECIFICANDO LA RUTA DE ESTE
    ProgressDialog progressDialog = ProgressDialog(context: context);
    progressDialog.show(max: 300, msg: 'Validando los datos....');
    ResponseApi responseApi = await gerenteProviders.detalle(id);
    progressDialog.close();
    //print('RESPONSE API: ${responseApi.toJson()}');

    //COMPARA SI CONTIENE DATOS
    if (responseApi.success == true) {
      GetStorage().write(
          'escasez', responseApi.data); //ALMACENA LOS DATOS DE LA ORDEN DE COMPRA

      //LOS DATOS ALMACENADOS DEL SERVIDOR LOS ALMACENA EN UN OBJETO
      DetailsEscasez myEscasez = DetailsEscasez.fromJson(GetStorage().read('escasez') ?? {});

      goToDetalle();
    } else {
      Get.snackbar(
          'Detalle fallido', responseApi.message ?? 'Sin Conexión al Servidor',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      
    }
  }

  Future<List<Escasez>> getBandeja(int pageSize, int pageIndex) async {
      return await gerenteProviders.bandejaEscasezPendientes(pageSize, pageIndex);
  }


}