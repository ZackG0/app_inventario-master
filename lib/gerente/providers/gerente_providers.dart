import 'package:app_inventario/gerente/models/detailEscasez.dart';
import 'package:app_inventario/gerente/models/vistoBueno.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../environment/environment.dart';
import '../../productos/models/detailProduct.dart';
import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../models/escasez.dart';

class GerenteProviders extends GetConnect{
  User userSession = User.fromJson(GetStorage().read('user') ?? {});

  String url = Environment.API_URL + 'escasez';

  Future<List<Escasez>> bandejaEscasezPendientes(int pageSize, int pageIndex) async {

    Response response = await get(
      '$url/all?pageSize=$pageSize&pageIndex=$pageIndex&search=',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSession.sesionToken}'
      }
    );

    if (response.statusCode != 200) {
      Get.snackbar('Peticion denegada',
          'Error en recuperar la información',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return [];

  }
  //print('PRODUCTO: ${response.body}');
  List<Escasez> product = Escasez.fromJsonList(response.body['registers'] ?? []);

  return product;

  }

  Future<List<VistoBueno>> bandejaEscasezAutorizadas(int pageSize, int pageIndex) async {

    Response response = await get(
      '$url/bandejaAutorizadas?pageSize=$pageSize&pageIndex=$pageIndex&search=',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSession.sesionToken}'
      }
    );

    if (response.statusCode != 200) {
      Get.snackbar('Peticion denegada',
          'Error en recuperar la información',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return [];

  }
  //print('PRODUCTO: ${response.body}');
  List<VistoBueno> visto = VistoBueno.fromJsonList(response.body['registers'] ?? []);

  return visto;

  }

  Future<ResponseApi> autorizar(DetailsEscasez detalle) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    Response response =
        await post('$url/autorizar', 
    {
      "idEscasez": detalle.id,
      "idUsuario": userSession.id,
      "idProducto": detalle.idProducto,
      "fechaAutorizacion": DateTime.now(),
      "stock": detalle.cantSoli
    }, headers: {
      //ESTA RESPUESTA LO CONVIERTE APLICATIVO JSON
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${userSession.sesionToken}'
    }); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    //COMPARA SI CONTIENE ALGUN DATO
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }
  
  Future<ResponseApi> addEscasez(DetailProduct product, int cantidad) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    Response response =
        await post('$url', 
    {
      "idProducto": product.id,
      "cantidad": cantidad,
      "precio": product.precio,
      "idUsuario": userSession.id,
    }, headers: {
      //ESTA RESPUESTA LO CONVIERTE APLICATIVO JSON
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${userSession.sesionToken}'
    }); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    //COMPARA SI CONTIENE ALGUN DATO
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }



  Future<ResponseApi> detalle(int idEscasez) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    Response response =
        await post('$url/detalle', {
      'ID': idEscasez
    }, headers: {
      //ESTA RESPUESTA LO CONVIERTE APLICATIVO JSON
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${userSession.sesionToken}'
    }); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    //COMPARA SI CONTIENE ALGUN DATO
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }

  Future<ResponseApi> detalleAutorizado(int idEscasez) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    Response response =
        await post('$url/detalleAutorizacion', {
      'ID': idEscasez
    }, headers: {
      //ESTA RESPUESTA LO CONVIERTE APLICATIVO JSON
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${userSession.sesionToken}'
    }); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    //COMPARA SI CONTIENE ALGUN DATO
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }

  
  
}