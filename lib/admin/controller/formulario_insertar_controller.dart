import 'package:app_inventario/admin/models/proveedor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../providers/admin_providers.dart';

class InsertarProveController extends GetxController{

  TextEditingController nombreEmpresaController = TextEditingController();
  TextEditingController contactoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController correoElectronicoController = TextEditingController();
  TextEditingController direccionController = TextEditingController();

  AdminProviders adminProviders = AdminProviders();

  void register(BuildContext context) async{
    String nombreEmpresa = nombreEmpresaController.text.trim();
    print(nombreEmpresa);
    String contacto = contactoController.text;
    print(contacto);
    String telefono = telefonoController.text.trim();
    print(telefono);
    String correoElectronico = correoElectronicoController.text.trim();
    print(correoElectronico);
    String direccion = direccionController.text.trim();
    print(direccion);


    if(isValidForm(nombreEmpresa, contacto, telefono, correoElectronico, direccion)){

      ProgressDialog progressDialog = ProgressDialog(context: context);
      progressDialog.show(max: 100, msg: 'Registrando Datos....');
      Proveedor prov = Proveedor(
        correoElectronico: correoElectronico,
        nombreEmpresa: nombreEmpresa,
        contacto: contacto,
        direccion: direccion,
        telefono: telefono
      );
      progressDialog.close();
      Response response = await adminProviders.create(prov);
      print("${response.statusCode}");
      // ignore: unrelated_type_equality_checks
      if(response.statusCode == 201){
        Get.snackbar("Formulario Valido", 'Proveedor Registrado');
      } else {
        Get.snackbar("Formulario No Valido", 'Proveedor No Registrado');
      }

      //print('RESPONSE: ${response.body}');

      //
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