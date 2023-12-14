import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../menu/menu_admin_page.dart';
import '../controller/detalle_prov_controller.dart';
import '../controller/lista_proveedor_controller.dart';
import '../models/proveedor.dart';

class ListProvPage extends StatefulWidget {
  ListaProveController con = Get.put(ListaProveController());
  DetalleProvController det = Get.put(DetalleProvController());

  @override
  State<ListProvPage> createState() => _ListProvPageState();
}

class _ListProvPageState extends State<ListProvPage> {
  late String barra;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: AppBar(
             backgroundColor: Color.fromARGB(255, 223, 102, 10),
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
        drawer: MenuAdmin(),
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: widget.con.getBandeja(20, 1),
            builder: (context, AsyncSnapshot<List<Proveedor>> snapshot){
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
                  return Container();
                }
              } else {
                return Container();
              }
            }
          ),
        ),
      );
  }

  Widget _textFieldSearch(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Text(
          'Proveedores',
          style: TextStyle(
              fontSize: 20, 
              color: Colors.white, 
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 45,
          width: MediaQuery.of(context).size.width * 0.80,
          child: TextField(
            keyboardType: TextInputType.text,
            /*onChanged: widget.con.onChangeText,
            controller: widget.con.nombreProducto,*/
            decoration: InputDecoration(
                hintText: 'Buscar Nom. Proveedor',
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

  Widget _cardProductos(BuildContext context, Proveedor prov){
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        color: const Color.fromARGB(255, 217, 216, 216),
                        border: Border.all(color: Colors.white10)),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                        Padding(
                          padding:  const EdgeInsets.only(top: 5.0, left: 15.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                      Column(
                                        children: const <Widget>[
                                           Text(
                                            'ID del proveedor',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold
                                                // color: Colors.white24
                                                ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      SizedBox(
                                      //height: 45,
                                      width: screenSize.width / 1.25,
                                      child: Text(
                                        '${prov.id}',
                                      ),
                                    ),
                                    Column(
                                        children: const <Widget>[
                                           Text(
                                            'Nombre del Proveedor:',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold
                                                // color: Colors.white24
                                                ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      SizedBox(
                                      //height: 45,
                                      width: screenSize.width / 1.25,
                                      child: Text(
                                        '${prov.contacto}',
                                      ),
                                    ),
                                    Column(
                                        children: const <Widget>[
                                           Text(
                                            'Nombre de la empresa:',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold
                                                // color: Colors.white24
                                                ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      SizedBox(
                                      //height: 45,
                                      width: screenSize.width / 1.25,
                                      child: Text(
                                        '${prov.nombreEmpresa}',
                                      ),
                                    ),
                                    Column(
                                        children: const <Widget>[
                                           Text(
                                            'Teléfono:',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold
                                                // color: Colors.white24
                                                ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      SizedBox(
                                      //height: 45,
                                      width: screenSize.width / 1.25,
                                      child: Text(
                                        '${prov.telefono}',
                                      ),
                                    ),
                                    Column(
                                        children: const <Widget>[
                                           Text(
                                            'Correo:',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold
                                                // color: Colors.white24
                                                ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      SizedBox(
                                      //height: 45,
                                      width: screenSize.width / 1.25,
                                      child: Text(
                                        '${prov.correoElectronico}',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
    
                                   ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: ButtonTheme(
                              height: 45,
                              minWidth: screenSize.width / 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: MaterialButton(
                                onPressed: () => widget.det.goToDetalle(prov.id ?? 0),
                                color: Color.fromARGB(255, 10, 48, 216),
                                child: const Text(
                                  'Actualizar',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: ButtonTheme(
                              height: 45,
                              minWidth: screenSize.width / 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: MaterialButton(
                                onPressed: () => widget.con.eleminar(prov.id ?? 0),
                                color: Color.fromARGB(255, 216, 10, 10),
                                child: const Text(
                                  'Eliminar',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                   ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}