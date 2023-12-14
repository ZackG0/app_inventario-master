import 'package:app_inventario/gerente/models/detailVistoBueno.dart';
import 'package:flutter/material.dart';

class ListaEscasezAutorizada extends StatelessWidget {
  final DeatialVistoBueno detalle;
  const ListaEscasezAutorizada(this.detalle, {Key? key}): super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
       ListTile(
          title: const Text(
            'Nombre de la Empresa',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.nombreEmpresa ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Categoría',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.categoria ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Descripción del Producto',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.descProd ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Nombre del Proveedor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.contacto ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
         ListTile(
          title: const Text(
            'Teléfono del Proveedor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.telefono ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Email del Empleado',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.emailUsuario ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Nombre del Empleado',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.nombreEmpleado ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        


      ],
    );
  }
}