import 'package:app_inventario/usuario/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {

  LoginController con = Get.put(LoginController());
  //const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "App Inventario's",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Inicio de Sesión",
            style: TextStyle(
              color: Colors.black,
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          TextField(
            controller: con.usernameController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Usuario",
              prefixIcon: Icon(Icons.person, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: con.passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          GestureDetector(
            onTap: () =>  con.goToRegisterPage(),
            child: const Text(
              "¿No tienes cuenta?",
              style: TextStyle(color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color.fromARGB(255, 61, 121, 242),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              onPressed: () => con.login(context),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}