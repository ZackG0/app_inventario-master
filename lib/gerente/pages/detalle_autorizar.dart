import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/detalle_autorizar_controller.dart';
import '../widget/lista_informacion_escasez_autorizacion.dart';

class DetalleEscasezAutorizadoPage extends StatefulWidget {
  DetalleEscasezAutorizarController con = Get.put(DetalleEscasezAutorizarController());

  @override
  State<DetalleEscasezAutorizadoPage> createState() => _DetalleEscasezAutorizadoPageState();
}

class _DetalleEscasezAutorizadoPageState extends State<DetalleEscasezAutorizadoPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información del producto'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 61, 121, 242),
        elevation: 0,
      ),
     key: _scaffoldKey,
     body: SafeArea(
      child: ListView(
          children: <Widget>[
            _encabezado(),
             const SizedBox(
                height: 5,
              ),
            ListaEscasezAutorizada(widget.con.deatialVistoBueno)
              //ListaInformacionEscasezXAutorizar(widget.con.detailsEscasez),
            //_boton(widget.con.myProduct.idEstatus ?? 0, context)
          ],
        )
      ),
    );
  }

  Widget _encabezado() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                     Color.fromARGB(255, 61, 121, 242),
                     Color.fromARGB(255, 61, 121, 242),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Nombre del Producto: ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                widget.con.deatialVistoBueno.nombreProducto ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              /*SizedBox(height: 10,),
              Image.network(widget.con.myProduct.imagen ?? '',width: 220,)*/
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 75,
                color: const Color.fromARGB(255, 61, 121, 242),
                child: ListTile(
                  title: Text(
                     '${widget.con.deatialVistoBueno.id}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 75,
                color: const Color.fromARGB(255, 61, 121, 242),
                child: ListTile(
                  title: Text(
                    '${widget.con.deatialVistoBueno.cantidad}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Cantidad',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 75,
                color: const Color.fromARGB(255, 61, 121, 242),
                child: ListTile(
                  title: Text(
                    '${widget.con.deatialVistoBueno.precio}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Precio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            //_boton(widget.con.myProduct.idEstatus ?? 0, context)
            
          ],
        ),
      ],
    );
  }
}