import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/detalle_productos_x_autorizar.dart';
import '../widget/lista_informacion_escasez.dart';

class DetalleEscasezXAutorizarPage extends StatefulWidget {
  DetalleEscasezXAutorizarController con = Get.put(DetalleEscasezXAutorizarController());

  @override
  State<DetalleEscasezXAutorizarPage> createState() => _DetalleEscasezXAutorizarPageState();
}

class _DetalleEscasezXAutorizarPageState extends State<DetalleEscasezXAutorizarPage> {
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
              ListaInformacionEscasezXAutorizar(widget.con.detailsEscasez),
              _botones(widget.con.detailsEscasez.estatus ?? '', context)
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
                widget.con.detailsEscasez.nomProducto ?? '',
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
                     '${widget.con.detailsEscasez.id}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Id Escasez',
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
                    '${widget.con.detailsEscasez.cantSoli}',
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
                    '${widget.con.detailsEscasez.precio}',
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

  Widget _botones(String estatus, BuildContext context) {
    if(estatus == '4 - Pendiente'){
        return Column(
        children: <Widget>[
          ButtonTheme(
            height: 40,
            minWidth: 250,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: MaterialButton(
              onPressed: () {
                //_showDialog(context, _cveOrden, cveUser);
              },
              child: const Text(
                'Autorizar',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: const Color.fromARGB(255, 39, 107, 210),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonTheme(
            height: 40,
            minWidth: 250,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: MaterialButton(
              onPressed: () {
                //widget.con.goToMensajeRechazo(_cveOrden);
              },
              child: const Text(
                'Rechazar',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: const Color.fromARGB(255, 210, 39, 39),
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }

}