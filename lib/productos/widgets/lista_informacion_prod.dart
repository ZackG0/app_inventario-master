import 'package:app_inventario/productos/models/detailProduct.dart';
import 'package:flutter/material.dart';

class ListaInformacionProd extends StatelessWidget {
  final DetailProduct detalle;
  const ListaInformacionProd(this.detalle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
       ListTile(
          title: const Text(
            'Descripción del producto',
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
            'Categoría del producto',
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
            'Nombre de la empresa',
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
            'Número del proveedor',
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
            'Email del proveedor',
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