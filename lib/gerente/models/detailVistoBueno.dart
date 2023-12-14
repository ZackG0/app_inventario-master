// To parse this JSON data, do
//
//     final deatialVistoBueno = deatialVistoBuenoFromJson(jsonString);

import 'dart:convert';

DeatialVistoBueno deatialVistoBuenoFromJson(String str) => DeatialVistoBueno.fromJson(json.decode(str));

String deatialVistoBuenoToJson(DeatialVistoBueno data) => json.encode(data.toJson());

class DeatialVistoBueno {
    String? descProd;
    String? categoria;
    int? precio;
    int? stock;
    String? nombreEmpresa;
    String? contacto;
    String? telefono;
    String? emailUsuario;
    String? nombreProducto;
    String? nombreEmpleado;
    String? fechaAutorizacion;
    int? cantidad;
    int? id;

    DeatialVistoBueno({
         this.descProd,
         this.categoria,
         this.precio,
         this.stock,
         this.nombreEmpresa,
         this.contacto,
         this.telefono,
         this.emailUsuario,
         this.nombreProducto,
         this.nombreEmpleado,
         this.fechaAutorizacion,
         this.cantidad,
         this.id,
    });

    factory DeatialVistoBueno.fromJson(Map<String, dynamic> json) => DeatialVistoBueno(
        descProd: json["descProd"],
        categoria: json["categoria"],
        precio: json["precio"],
        stock: json["stock"],
        nombreEmpresa: json["nombreEmpresa"],
        contacto: json["contacto"],
        telefono: json["telefono"],
        emailUsuario: json["emailUsuario"],
        nombreProducto: json["nombre_Producto"],
        nombreEmpleado: json["nombre_Empleado"],
        fechaAutorizacion: json["fecha_Autorizacion"].toString(),
        cantidad: json["cantidad"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "descProd": descProd,
        "categoria": categoria,
        "precio": precio,
        "stock": stock,
        "nombreEmpresa": nombreEmpresa,
        "contacto": contacto,
        "telefono": telefono,
        "emailUsuario": emailUsuario,
        "nombre_Producto": nombreProducto,
        "nombre_Empleado": nombreEmpleado,
        "fecha_Autorizacion": fechaAutorizacion,
        "cantidad": cantidad,
        "id": id,
    };
}
