import 'dart:ffi';

import 'package:app_inventario/admin/models/proveedor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../providers/admin_providers.dart';

class DetalleProvController extends GetxController{
    User user = User.fromJson(GetStorage().read('user') ?? {});
    Rx<Proveedor> proveedor = Proveedor().obs;
    //Proveedor proveedor = Proveedor.fromJson(GetStorage().read('prov'));
    TextEditingController idController = TextEditingController();
    TextEditingController nombreEmpresaController = TextEditingController();
    TextEditingController contactoController = TextEditingController();
    TextEditingController telefonoController = TextEditingController();
    TextEditingController correoElectronicoController = TextEditingController();
    TextEditingController direccionController = TextEditingController();

    AdminProviders adminProviders = AdminProviders();

    void detalle(int id) async {
    //ALAMACENA LA RESPUESTA QUE DA EL SERVIDOR, ESPECIFICANDO LA RUTA DE ESTE
    print("Entra");
    ResponseApi responseApi = await adminProviders.detalle(id);
    print('RESPONSE API: ${responseApi.toJson()}');

    //COMPARA SI CONTIENE DATOS
    if (responseApi.success == true) {
        proveedor.value = Proveedor.fromJson(responseApi.data);
        if(proveedor.value.id != null){
          idController.text = proveedor.value.id.toString();
          nombreEmpresaController.text = proveedor.value.nombreEmpresa ?? ''; 
          contactoController.text = proveedor.value.contacto ?? '';
          telefonoController.text = proveedor.value.telefono ?? '';
          correoElectronicoController.text = proveedor.value.correoElectronico ?? '';
          direccionController.text = proveedor.value.direccion ?? '';
        } 

        
      //goToDetalle();
    } else {
      Get.snackbar(
          'Detalle fallido', responseApi.message ?? 'Sin Conexión al Servidor',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      
    }
  }

  void goToDetalle(int id){
    detalle(id);
    Get.toNamed('/admin/provUpdate');
  }


    void edit(BuildContext context) async{
    String id = idController.text.trim();
    String nombreEmpresa = nombreEmpresaController.text.trim();
    String contacto = contactoController.text;
    String telefono = telefonoController.text.trim();
    String correoElectronico = correoElectronicoController.text.trim();
    String direccion = direccionController.text.trim();

    if(isValidForm(nombreEmpresa, contacto, telefono, correoElectronico, direccion)){

      ProgressDialog progressDialog = ProgressDialog(context: context);
      progressDialog.show(max: 100, msg: 'Registrando Datos....');
      Proveedor prov = Proveedor(
        id: int.parse(id),
        correoElectronico: correoElectronico,
        nombreEmpresa: nombreEmpresa,
        contacto: contacto,
        direccion: direccion,
        telefono: telefono
      );
      progressDialog.close();
      await adminProviders.updateProveedor(prov);

      
    }

    
  }
  
  bool isValidForm(
    String nombreEmpresa, 
    String contacto, 
    String telefono, 
    String correoElectronico, 
    String direccion) {

      if(correoElectronico.isEmpty){
        Get.snackbar('Formulario no valido', 'Debes de ingresar el email');
        return false;
      }

      if(!GetUtils.isEmail(correoElectronico)){
        Get.snackbar('Formulario no valido', 'El email no es valido');
        return false;
      }

      if(nombreEmpresa.isEmpty){
        Get.snackbar('Formulario no valido', 'Debes de ingresar tu nombre de la empresa');
        return false;
      }

      if(contacto.isEmpty){
        Get.snackbar('Formulario no valido', 'Debes de ingresar el nombre del proveedor');
        return false;
      }

      if(telefono.isEmpty){
        Get.snackbar('Formulario no valido', 'Debes de ingresar el teléfono ');
        return false;
      }

      if(direccion.isEmpty){
        Get.snackbar('Formulario no valido', 'Debes de ingresar la dirección de la empresa');
        return false;
      }

      return true;


    }

}