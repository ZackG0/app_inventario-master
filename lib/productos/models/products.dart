// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    int? id;
    String? nomProd;
    String? descProd;
    String? categoria;
    double? precio;
    int? stock;
    int? estatus;
    String? color;

    Product({
         this.id,
         this.nomProd,
         this.descProd,
         this.categoria,
         this.precio,
         this.stock,
         this.estatus,
         this.color
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        nomProd: json["nomProd"],
        descProd: json["descProd"],
        categoria: json["categoria"],
        precio: json["precio"],
        stock: json["stock"],
        estatus: json["estatus"],
        color: json["color"]
    );

    static List<Product> fromJsonList(List<dynamic> jsonList){
      List<Product> toList = [];
      jsonList.forEach((item) {
      Product product = Product.fromJson(item);
      toList.add(product);
      });
      return toList;
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "nomProd": nomProd,
        "descProd": descProd,
        "categoria": categoria,
        "precio": precio,
        "stock": stock,
        "estatus": estatus,
        "color": color
    };
}
