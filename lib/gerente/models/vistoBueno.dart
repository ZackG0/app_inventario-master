// To parse this JSON data, do
//
//     final vistoBueno = vistoBuenoFromJson(jsonString);

import 'dart:convert';

VistoBueno vistoBuenoFromJson(String str) => VistoBueno.fromJson(json.decode(str));

String vistoBuenoToJson(VistoBueno data) => json.encode(data.toJson());

class VistoBueno {
    String? nombreProducto;
    String? nombreEmpleado;
    String? fechaAutorizacion;
    int? cantidad;
    int? precio;
    int? id;

    VistoBueno({
         this.nombreProducto,
         this.nombreEmpleado,
         this.fechaAutorizacion,
         this.cantidad,
         this.precio,
         this.id,
    });

    factory VistoBueno.fromJson(Map<String, dynamic> json) => VistoBueno(
        nombreProducto: json["nombre_Producto"],
        nombreEmpleado: json["nombre_Empleado"],
        fechaAutorizacion: json["fecha_Autorizacion"].toString(),
        cantidad: json["cantidad"],
        precio: json["precio"],
        id: json["id"],
    );

    static List<VistoBueno> fromJsonList(List<dynamic> jsonList){
      List<VistoBueno> toList = [];
      jsonList.forEach((item) {
      VistoBueno vistoBueno = VistoBueno.fromJson(item);
      toList.add(vistoBueno);
      });
      return toList;
    }

    Map<String, dynamic> toJson() => {
        "nombre_Producto": nombreProducto,
        "nombre_Empleado": nombreEmpleado,
        "fecha_Autorizacion": fechaAutorizacion,
        "cantidad": cantidad,
        "precio": precio,
        "id": id,
    };
}
