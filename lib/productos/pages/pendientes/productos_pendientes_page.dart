import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../menu/menu_empleado.dart';
import '../../controller/productos_pendientes_constroller.dart';
import '../../models/products.dart';


class ProductosPendientesListPage extends StatefulWidget {
  ProductosListPendientesController con = Get.put(ProductosListPendientesController());

  @override
  State<ProductosPendientesListPage> createState() => _ProductosPendientesListPageState();
}

class _ProductosPendientesListPageState extends State<ProductosPendientesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
           backgroundColor: Color.fromARGB(255, 61, 121, 242),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30.0),
                  ),
            ),
            flexibleSpace: Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.topCenter,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      _textFieldSearch(
                        context,
                        
                    ),
                ],
              ),
            )
        ),
      ),
      drawer: MenuEmpleado(),
      body: SingleChildScrollView(
          child: FutureBuilder(
            future: widget.con.getBandeja(3, 1),
            builder: (context, AsyncSnapshot<List<Product>> snapshot){
              if (snapshot.hasData) {
                if (snapshot.data!.isNotEmpty) {
                  return Column(
                          children: <Widget>[
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data?.length ?? 0,
                              itemBuilder: (_, index){
                                return _cardProductos(context, snapshot.data![index]);
                        }
                      ),
                      
                    ],
                  );
                } else {
                  return _botonActualizar();
                }
              } else {
                return Container();
              }
            }
          ),
        ),
    );
  }

    Widget _botonActualizar(){
      return Container(
              padding: const EdgeInsets.fromLTRB(50, 120, 50, 50),
               child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                            //NoDataWidget(text: 'No hay órdenes pendientes'),
                const SizedBox(height: 20),
                 SizedBox(
                     height: 45,
                     //width: 60,
                      child: ElevatedButton(
                     onPressed: () {
                         
                       },
                      child: const Text('Actualizar',
                           style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                 );
    }

    Widget _textFieldSearch(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Text(
          'Productos Pendientes',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 45,
          width: MediaQuery.of(context).size.width * 0.80,
          child: TextField(
            keyboardType: TextInputType.number,
            //onChanged: widget.con.onChangeText,
            //controller: widget.con.cveOrdenController,
            decoration: InputDecoration(
                hintText: 'Buscar Nom. Producto',
                suffixIcon: const Icon(Icons.search, color: Colors.grey),
                hintStyle: const TextStyle(fontSize: 17, color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey)),
                contentPadding: const EdgeInsets.all(15)),
          ),
        ),
        //const WarningWidgetGetX(),
      ],
    ));
  }

    Widget _line() {
      return Container(
        height: 1.0,
        width: double.infinity,
        color: Colors.black,
      );
    }

    Widget _cardProductos(BuildContext context, Product product) {
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Stack(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: Container(
                  //height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color.fromARGB(255, 217, 216, 216),
                      border: Border.all(color: Colors.white10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          "${product.nomProd}",
                          style: const TextStyle(
                              fontFamily: "Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                      ),
                      _line(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Text('Precio:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '\$${product.precio}',
                                        style: const TextStyle(fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        'Categoría:',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold
                                            // color: Colors.white24
                                            ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text("${product.categoria}",
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        'Descripción:',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold
                                            // color: Colors.white24
                                            ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text("${product.descProd}",
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      const SizedBox(
                                        width: 160,
                                      ),
                                      TextButton(
                                          // Esta función se moverá a otra pantalla donde pasara como objeto "orden"
                                          onPressed: () => widget.con.detalle(product.id ?? 0, context),
                                          child: const Text('Ver detalle',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              )))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 10,
                child: Container(
                  height: 40.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          tileMode: TileMode.repeated,
                          colors: [
                            Color.fromARGB(255, 61, 121, 242),
                            Color.fromARGB(255, 61, 121, 242),
                          ])),
                  child: Center(
                    child: Text(
                      "${product.id}",
                      style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}