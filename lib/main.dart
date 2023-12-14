import 'package:app_inventario/forget.dart';
import 'package:app_inventario/productos/pages/detalle/producto_detalle_page.dart';
import 'package:app_inventario/productos/pages/pendientes/productos_pendientes_page.dart';
import 'package:app_inventario/productos/pages/porEntregar/productos_x_entregar.dart';
import 'package:app_inventario/productos/pages/product_card.dart';
import 'package:app_inventario/productos/pages/productos_all_page.dart';
import 'package:app_inventario/productos/pages/rechazadas/productos_rechazados_page.dart';
import 'package:app_inventario/productos/pages/sinStock/productos_sin_stock_page.dart';
import 'package:app_inventario/register.dart';
import 'package:app_inventario/usuario/models/user.dart';
import 'package:app_inventario/usuario/pages/home/home_page.dart';
import 'package:app_inventario/usuario/pages/login/login_page.dart';
import 'package:app_inventario/usuario/pages/register/register_page.dart';
import 'package:app_inventario/widgets/conexion_internet/check_internet_connection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'admin/pages/detalle_prov_page.dart';
import 'admin/pages/formulario_insertar_prov.dart';
import 'admin/pages/lista_prov_page.dart';
import 'gerente/pages/detalle_autorizar.dart';
import 'gerente/pages/detalle_productos_x_autorizar.dart';
import 'gerente/pages/productos_autorizados_page.dart';
import 'gerente/pages/productos_x_autorizar_page.dart';
import 'usuario/pages/home/welcome_screen.dart';

User userSession = User.fromJson(GetStorage().read('user') ?? {});
final internetChecker = CheckInternetConnection();

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Inventario de Ropa',
      debugShowCheckedModeBanner: false,
      initialRoute: userSession.nomUser != null ? '/home' :'/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/home', page: () => WelcomeScreen()),
        GetPage(name: '/products', page: () => ProductosListPage()),
        GetPage(name: '/productsPendientes', page: () => ProductosPendientesListPage()),
        GetPage(name: '/productsRechazados', page: () => ProductosRechazoListPage()),
        GetPage(name: '/productsXEntregar', page: () => ProductosXEntregar()),
        GetPage(name: '/productsSinStock', page: () => ProductosSinStock()),
        GetPage(name: '/productsDetail', page: () => ProductoDetallePage()),
        GetPage(name: '/gerente', page: () => ProductosXAutorizarPage()),
        GetPage(name: '/gerente/detailXAutorizar', page: () => DetalleEscasezXAutorizarPage()),
        GetPage(name: '/gerente/detailAutorizado', page: () => DetalleEscasezAutorizadoPage()),
        GetPage(name: '/gerente/productsAutorizados', page: () => ProductosAutorizadosPage()),
        GetPage(name: '/admin/provList', page: () => ListProvPage()),
        GetPage(name: '/admin/provUpdate', page: () => UpdateProvPage()),
        GetPage(name: '/admin/provInsertar', page: () => FormularioProvPage()),
        //ProductosXAutorizarPage
      ],
      navigatorKey: Get.key,
    );
  }
}

