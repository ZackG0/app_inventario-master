import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/producto_detalle_controller.dart';
import '../../widgets/lista_informacion_prod.dart';

class ProductoDetallePage extends StatefulWidget {
  ProductoDetalleController con =  Get.put(ProductoDetalleController());

  @override
  State<ProductoDetallePage> createState() => _ProductoDetallePageState();
}

class _ProductoDetallePageState extends State<ProductoDetallePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

   Map<int, Color> colors = {
    1: Color.fromARGB(255, 2, 145, 2),
    2: Color.fromARGB(255, 226, 156, 5),
    3: Color.fromARGB(255, 235, 32, 32),
    4: Color.fromARGB(255, 61, 121, 242),
    5: Color.fromARGB(255, 128, 0, 0),
    6: Color.fromARGB(255, 9, 163, 89),
    7: Color.fromARGB(255, 2, 30, 101)
  };


  @override
  Widget build(BuildContext context) {
    Color? color = colors[widget.con.myProduct.idEstatus];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información del producto'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: color,
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
              ListaInformacionProd(widget.con.myProduct),
            _boton(widget.con.myProduct.idEstatus ?? 0, context)
          ],
        )
      ),
    );
  }

  Widget _encabezado() {
    Color? color = colors[widget.con.myProduct.idEstatus];
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    color ?? Color.fromARGB(255, 61, 121, 242),
                    color ?? Color.fromARGB(255, 61, 121, 242),
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
                widget.con.myProduct.nomProd ?? '',
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
                color: color,
                child: ListTile(
                  title: Text(
                     '${widget.con.myProduct.id}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Id producto',
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
                color: color,
                child: ListTile(
                  title: Text(
                    '${widget.con.myProduct.stock}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Stock',
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
                color: color,
                child: ListTile(
                  title: Text(
                    '${widget.con.myProduct.precio}',
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

  

  Widget _boton(int estatus, BuildContext context) {
    
    if(estatus == 3){
        return Column(
        children: <Widget>[
          SizedBox(
            width: 150,
            child: TextField(
            //minLines: 5,
            controller: widget.con.cantidadController,
            //obscureText: obscureText,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: "Cantidad",
                contentPadding: EdgeInsets.symmetric(vertical: 20,
                    horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                )
            ),
                  ),
          ),
        const SizedBox(height: 10,),
        ButtonTheme(
            height: 40,
            minWidth: 250,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: MaterialButton(
              onPressed: () {
                widget.con.addEscasez(context);
              },
              child: const Text(
                'Solicitar',
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
          
        ],
      );
    } else {
      return Container();
    }
  }
}