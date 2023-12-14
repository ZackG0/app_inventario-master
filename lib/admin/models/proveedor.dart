// To parse this JSON data, do
//
//     final proveedor = proveedorFromJson(jsonString);

import 'dart:convert';

Proveedor proveedorFromJson(String str) => Proveedor.fromJson(json.decode(str));

String proveedorToJson(Proveedor data) => json.encode(data.toJson());

class Proveedor {
    int? id;
    String? nombreEmpresa;
    String? contacto;
    String? telefono;
    String? correoElectronico;
    String? direccion;

    Proveedor({
         this.id,
         this.nombreEmpresa,
         this.contacto,
         this.telefono,
         this.correoElectronico,
         this.direccion,
    });

    factory Proveedor.fromJson(Map<String, dynamic> json) => Proveedor(
        id: json["id"],
        nombreEmpresa: json["nombreEmpresa"],
        contacto: json["contacto"],
        telefono: json["telefono"],
        correoElectronico: json["correoElectronico"],
        direccion: json["direccion"],
    );

    static List<Proveedor> fromJsonList(List<dynamic> jsonList){
      List<Proveedor> toList = [];
      jsonList.forEach((item) {
      Proveedor proveedor = Proveedor.fromJson(item);
      toList.add(proveedor);
      });
      return toList;
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombreEmpresa": nombreEmpresa,
        "contacto": contacto,
        "telefono": telefono,
        "correoElectronico": correoElectronico,
        "direccion": direccion,
    };
}
