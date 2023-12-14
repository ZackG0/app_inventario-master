import 'package:app_inventario/admin/models/proveedor.dart';
import 'package:app_inventario/admin/providers/admin_providers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';

class ListaProveController extends GetxController{

  User user = User.fromJson(GetStorage().read('user') ?? {});

  AdminProviders adminProviders = AdminProviders();

  void goToDetalle(){
    Get.toNamed('/admin/provUpdate');
  }

  void eleminar(int id) async{
    await adminProviders.deleteProveedor(id);
  }

  
  void detalle(int id) async {
    //ALAMACENA LA RESPUESTA QUE DA EL SERVIDOR, ESPECIFICANDO LA RUTA DE ESTE
    ResponseApi responseApi = await adminProviders.detalle(id);
    //print('RESPONSE API: ${responseApi.toJson()}');

    //COMPARA SI CONTIENE DATOS
    if (responseApi.success == true) {
      GetStorage().write(
          'prov', responseApi.data); //ALMACENA LOS DATOS DE LA ORDEN DE COMPRA

      //LOS DATOS ALMACENADOS DEL SERVIDOR LOS ALMACENA EN UN OBJETO
      Proveedor myProv = Proveedor.fromJson(GetStorage().read('prov') ?? {});

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


  Future<List<Proveedor>> getBandeja(int pageSize, int pageIndex) async {
      return await adminProviders.bandejaProveedor(pageSize, pageIndex,'');
  }

}