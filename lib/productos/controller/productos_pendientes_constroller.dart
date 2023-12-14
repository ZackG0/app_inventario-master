import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../models/detailProduct.dart';
import '../models/products.dart';
import '../providers/product_providers.dart';

class ProductosListPendientesController extends GetxController{
  User user = User.fromJson(GetStorage().read('user') ?? {});

  ProductsProviders productaProvider = ProductsProviders();

  void goToDetalle(){
    Get.toNamed('/productsDetail');
  }

  void detalle(int id, BuildContext context) async {
    //ALAMACENA LA RESPUESTA QUE DA EL SERVIDOR, ESPECIFICANDO LA RUTA DE ESTE
    ProgressDialog progressDialog = ProgressDialog(context: context);
    progressDialog.show(max: 300, msg: 'Validando los datos....');
    ResponseApi responseApi = await productaProvider.detalle(id);
    progressDialog.close();
    //print('RESPONSE API: ${responseApi.toJson()}');

    //COMPARA SI CONTIENE DATOS
    if (responseApi.success == true) {
      GetStorage().write(
          'producto', responseApi.data); //ALMACENA LOS DATOS DE LA ORDEN DE COMPRA

      //LOS DATOS ALMACENADOS DEL SERVIDOR LOS ALMACENA EN UN OBJETO
      DetailProduct myProduct = DetailProduct.fromJson(GetStorage().read('producto') ?? {});

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

  Future<List<Product>> getBandeja(int pageSize, int pageIndex) async {
    return await productaProvider.bandejaProductoPendientes(pageSize, pageIndex);
  }
}