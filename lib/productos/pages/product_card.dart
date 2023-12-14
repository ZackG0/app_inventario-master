import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
    Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
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
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Center(
                            child: Container(
                              height: 45.0,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      tileMode: TileMode.repeated,
                                      colors: [
                                        Color.fromARGB(255, 223, 102, 10),
                                        Color.fromARGB(255, 117, 179, 9),
                                      ])),
                              child: Center(
                                child: Text(
                                   'ID',
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                        children: <Widget>[
                                           Text(
                                            'Nombre del Producto:',
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
                                        'Nombre Producto',
                                      ),
                                    ),
                                    Column(
                                        children: <Widget>[
                                           Text(
                                            'Descripción:',
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
                                        'Descripción',
                                      ),
                                    ),
                                    Column(
                                        children: <Widget>[
                                           Text(
                                            'Categoría:',
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
                                        'Categoría',
                                      ),
                                    ),
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
                                          'Precio',
                                          style: const TextStyle(fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        const Text('Stock:',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Stock',
                                          style: const TextStyle(fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                    Column(
                                        children: <Widget>[
                                           Text(
                                            'Estatus:',
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
                                        'Estatus',
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
                                onPressed: (){},
                                child: const Text(
                                  'Ver detalle',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                color: Color.fromARGB(255, 216, 141, 10),
                              )),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                   ],
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}