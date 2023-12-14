// To parse this JSON data, do
//
//     final escasez = escasezFromJson(jsonString);

import 'dart:convert';

Escasez escasezFromJson(String str) => Escasez.fromJson(json.decode(str));

String escasezToJson(Escasez data) => json.encode(data.toJson());

class Escasez {
    String? nomProducto;
    int? cantSoli;
    String? fechaRegistro;
    String? nomUsuario;
    String? estatus;
    int? precio;
    int? id;

    Escasez({
         this.nomProducto,
         this.cantSoli,
         this.fechaRegistro,
         this.nomUsuario,
         this.estatus,
         this.precio,
         this.id,
    });

    factory Escasez.fromJson(Map<String, dynamic> json) => Escasez(
        nomProducto: json["nom_Producto"],
        cantSoli: json["cant_Soli"],
        fechaRegistro: json["fecha_Registro"].toString(),
        nomUsuario: json["nom_Usuario"],
        estatus: json["estatus"],
        precio: json["precio"],
        id: json["id"],
    );

    static List<Escasez> fromJsonList(List<dynamic> jsonList){
      List<Escasez> toList = [];
      jsonList.forEach((item) {
      Escasez escasez = Escasez.fromJson(item);
      toList.add(escasez);
      });
      return toList;
    }

    Map<String, dynamic> toJson() => {
        "nom_Producto": nomProducto,
        "cant_Soli": cantSoli,
        "fecha_Registro": fechaRegistro,
        "nom_Usuario": nomUsuario,
        "estatus": estatus,
        "precio": precio,
        "id": id,
    };
}
