import 'package:app_inventario/menu/menu_gerente_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuGerente extends StatefulWidget {
  MenuGerenteController con = Get.put(MenuGerenteController());

  @override
  State<MenuGerente> createState() => _MenuGerenteState();
}

class _MenuGerenteState extends State<MenuGerente> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 237, 243, 247),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
             Container(
              //width: 100,
              height: 150,
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/inventario.png'),
            ),
            ListTile(
              leading: const Icon(
                Icons.home_sharp,
                color: Colors.black,
              ),
              title: const Text('Inicio'),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(
                Icons.access_time_filled,
                color: Colors.black,
              ),
              title: const Text('Productos autorizados'),
              onTap: ()=> widget.con.goToProductosAutorizados(),
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              title: const Text('Logout'),
              onTap: ()=> widget.con.signOut(),
            ),

          ],
        ),
      ),
    );
  }
}