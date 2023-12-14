import 'package:app_inventario/gerente/models/detailVistoBueno.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/user.dart';
import '../providers/gerente_providers.dart';

class DetalleEscasezAutorizarController extends GetxController{
  DeatialVistoBueno deatialVistoBueno = DeatialVistoBueno.fromJson(GetStorage().read('visto') ?? {});
  GerenteProviders gerenteProviders = GerenteProviders();
  User user = User.fromJson(GetStorage().read('user') ?? {});
}