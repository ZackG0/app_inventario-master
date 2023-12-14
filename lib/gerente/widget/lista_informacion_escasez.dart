import 'package:app_inventario/gerente/models/detailEscasez.dart';
import 'package:flutter/material.dart';

class ListaInformacionEscasezXAutorizar extends StatelessWidget {
  final DetailsEscasez detalle;
  const ListaInformacionEscasezXAutorizar(this.detalle, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
       ListTile(
          title: const Text(
            'Nombre del proveedor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.nombProv ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Email del Proveedor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.emailProv ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Nombre del proveedor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.nombProv ?? '', style: const TextStyle(fontSize: 18)),
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
              Text(detalle.telefonoProv ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
         ListTile(
          title: const Text(
            'Nombre de la Empresa',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.nombEmpresa ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Nombre del empleado',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.nomUsuario ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Correo del empleado',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.correoUsuario ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Estatus',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text(detalle.estatus ?? '', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),


      ],
    );
  }
}