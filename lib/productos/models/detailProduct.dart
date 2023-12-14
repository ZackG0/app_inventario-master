// To parse this JSON data, do
//
//     final detailProduct = detailProductFromJson(jsonString);

import 'dart:convert';

DetailProduct detailProductFromJson(String str) => DetailProduct.fromJson(json.decode(str));

String detailProductToJson(DetailProduct data) => json.encode(data.toJson());

class DetailProduct {
    String? nomProd;
    String? descProd;
    String? categoria;
    double? precio;
    int? stock;
    String? nombEmpresa;
    String? imagen;
    String? estatus;
    String? nombProv;
    String? telefonoProv;
    String? emailProv;
    int? idEstatus;
    int? id;

    DetailProduct({
         this.nomProd,
         this.descProd,
         this.categoria,
         this.precio,
         this.stock,
         this.nombEmpresa,
         this.imagen,
         this.estatus,
         this.nombProv,
         this.telefonoProv,
         this.emailProv,
         this.idEstatus,
         this.id,
    });

    factory DetailProduct.fromJson(Map<String, dynamic> json) => DetailProduct(
        nomProd: json["nomProd"],
        descProd: json["descProd"],
        categoria: json["categoria"],
        precio: json["precio"],
        stock: json["stock"],
        nombEmpresa: json["nombEmpresa"],
        imagen: json["imagen"],
        estatus: json["estatus"],
        nombProv: json["nombProv"],
        telefonoProv: json["telefonoProv"],
        emailProv: json["emailProv"],
        idEstatus: json["idEstatus"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "nomProd": nomProd,
        "descProd": descProd,
        "categoria": categoria,
        "precio": precio,
        "stock": stock,
        "nombEmpresa": nombEmpresa,
        "imagen": imagen,
        "estatus": estatus,
        "nombProv": nombProv,
        "telefonoProv": telefonoProv,
        "emailProv": emailProv,
        "idEstatus":idEstatus,
        "id": id,
    };
}
