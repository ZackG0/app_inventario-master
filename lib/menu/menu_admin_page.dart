import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_admin_controller.dart';

class MenuAdmin extends StatefulWidget {
  MenuAdminController con = Get.put(MenuAdminController());

  @override
  State<MenuAdmin> createState() => _MenuAdminState();
}

class _MenuAdminState extends State<MenuAdmin> {
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
              title: const Text('Insertar Proveedor'),
              onTap: ()=> widget.con.goToInsertProv(),
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