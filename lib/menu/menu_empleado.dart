import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_empleado_controller.dart';

class MenuEmpleado extends StatefulWidget {
  MenuEmpleadoController con = Get.put(MenuEmpleadoController());
  
  @override
  State<MenuEmpleado> createState() => _MenuEmpleadoState();
}

class _MenuEmpleadoState extends State<MenuEmpleado> {
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
              onTap: () => widget.con.goToInicio(),
            ),
            ListTile(
              leading: const Icon(
                Icons.access_time_filled,
                color: Colors.black,
              ),
              title: const Text('Productos por autorizar'),
              onTap: ()=> widget.con.goToProductosPendientes(),
            ),
             ListTile(
                    leading: const Icon(
                      Icons.cancel,
                      color: Colors.black,
                    ),
                    title: const Text('Rechazados'),
                    onTap: ()=> widget.con.goToProductosRechazados()
            ),
            ListTile(
                    leading: const Icon(
                      Icons.alarm_add_rounded,
                      color: Colors.black,
                    ),
                    title: const Text('Productos por llegar'),
                    onTap: ()=> widget.con.goToProductoXEntregar()
            ),
            ListTile(
                    leading: const Icon(
                      Icons.hourglass_empty,
                      color: Colors.black,
                    ),
                    title: const Text('Productos sin Stock'),
                    onTap: ()=> widget.con.goToProductoSinStock()
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