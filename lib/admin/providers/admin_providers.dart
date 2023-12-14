import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../models/proveedor.dart';

class AdminProviders extends GetConnect{

  //SESION DEL USUARIO.
  User userSession = User.fromJson(GetStorage().read('user') ?? {});

  // CREAR
  Future<Response> create(Proveedor prov) async{
    print("ENTRA");
    Response response = await post(
      'http://localhost:5000/api/proveedor',
      prov.toJson(),
      headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${userSession.sesionToken}'
        }
    );
    print("Body: ${response.body}");
     if(response.body == null){
      Get.snackbar('Error', 'No se pudo ejecutar la petición');
    }
    return response;
  }

  //MOSTRAR TODOS
  Future<List<Proveedor>> bandejaProveedor(int pageSize, int pageIndex, String nombreProducto) async {

    Response response = await get(
      'http://localhost:5000/api/proveedor?pageSize=$pageSize&pageIndex=$pageIndex&search=$nombreProducto',
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
  print('${response.body}');
  List<Proveedor> proveedor = Proveedor.fromJsonList(response.body['registers'] ?? []);

  return proveedor;

  }

  //ID
  Future<ResponseApi> detalle(int idProveedor) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    print("ENDPOINT");
    Response response =
        await post('http://localhost:5000/api/proveedor/detalle', {
      'ID': idProveedor
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
    print("RETORNA");
    return responseApi;
  }

  Future<void> updateProveedor(Proveedor proveedor) async {
    Response response = await put(
        'http://localhost:5000/api/proveedor/edit',
        proveedor.toJson(),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${userSession.sesionToken}'
        }
    ); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA
    print("ESTATUS CODE: ${response.statusCode}");
    if (response.statusCode != 200) {
      Get.snackbar('Error', 'No se pudo ejecutar la modificación',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      
      
    } else {
      Get.snackbar('Exito', 'Se modifico el proveedor el proveedor',
          backgroundColor: Color.fromARGB(255, 42, 48, 214),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      
    }
  }

  Future<void> deleteProveedor(int idProveedor) async {
    Response response = await delete(
        'http://localhost:5000/api/proveedor/delete/$idProveedor',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${userSession.sesionToken}'
        }
    ); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    if (response.statusCode != 200) {
      Get.snackbar('Error', 'No se pudo ejecutar la eliminación',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      
    } else {
      Get.snackbar('Exito', 'Se elimino el proveedor',
          backgroundColor: Color.fromARGB(255, 42, 48, 214),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
    }

    
  }






}