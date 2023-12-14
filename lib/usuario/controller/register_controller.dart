import 'package:app_inventario/usuario/providers/user_providers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../models/user.dart';

class RegisterController extends GetxController{

  TextEditingController usernameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  UsersProviders usersProviders = UsersProviders();

  void register(BuildContext context) async{
    String nomUser = usernameController.text.trim();
    String name = nameController.text;
    String correoElectronico = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if(isValidForm(nomUser, password, name, correoElectronico, confirmPassword)){

      User user = User(
        correoElectronico: correoElectronico,
        apellido: name,
        nomUser: nomUser,
        password: password,
        permiso: 1
      );
      ProgressDialog progressDialog = ProgressDialog(context: context);
      progressDialog.show(max: 300, msg: 'Refistrando Datos....');
      Response response = await usersProviders.create(user);
      progressDialog.close();
      print('RESPONSE: ${response.body}');
      // ignore: unrelated_type_equality_checks
      if(response.status == 200){
        Get.snackbar("Formulario Valido", 'Usuario Registrado');  
      } else {
        Get.snackbar("Formulario No Valido", 'Usuario No Registrado');
      }

      
    }

    
  }

  bool isValidForm(
    String username, 
    String password,
    String name,
    String email,
    String confirmPassword
    ) {

    if(email.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar el email');
      return false;
    }

    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no valido', 'El email no es valido');
      return false;
    }

    if(name.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar tu nombre completo');
      return false;
    }

    if(username.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar un usuario');
      return false;
    }

    if(password.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar una contraseña');
      return false;
    }

    if(confirmPassword.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar la confirmación de la contraseña');
      return false;
    }

    if(password != confirmPassword){
      Get.snackbar('Formulario no valido', 'Contraseña no valida, verifique si es igual');
      return false;
    }

    return true;
  }

  
}