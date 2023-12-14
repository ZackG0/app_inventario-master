// To parse this JSON data, do
//
//     final detailsEscasez = detailsEscasezFromJson(jsonString);

import 'dart:convert';

DetailsEscasez detailsEscasezFromJson(String str) => DetailsEscasez.fromJson(json.decode(str));

String detailsEscasezToJson(DetailsEscasez data) => json.encode(data.toJson());

class DetailsEscasez {
    String? nombProv;
    String? telefonoProv;
    String? emailProv;
    String? nombEmpresa;
    String? correoUsuario;
    int? idProducto;
    String? nomProducto;
    int? cantSoli;
    String? fechaRegistro;
    String? nomUsuario;
    String? estatus;
    int? precio;
    int? id;

    DetailsEscasez({
         this.nombProv,
         this.telefonoProv,
         this.emailProv,
         this.nombEmpresa,
         this.correoUsuario,
         this.idProducto,
         this.nomProducto,
         this.cantSoli,
         this.fechaRegistro,
         this.nomUsuario,
         this.estatus,
         this.precio,
         this.id,
    });

    factory DetailsEscasez.fromJson(Map<String, dynamic> json) => DetailsEscasez(
        nombProv: json["nomb_Prov"],
        telefonoProv: json["telefono_Prov"],
        emailProv: json["email_Prov"],
        nombEmpresa: json["nomb_Empresa"],
        correoUsuario: json["correo_Usuario"],
        idProducto: json["id_Producto"],
        nomProducto: json["nom_Producto"],
        cantSoli: json["cant_Soli"],
        fechaRegistro: json["fecha_Registro"].toString(),
        nomUsuario: json["nom_Usuario"],
        estatus: json["estatus"],
        precio: json["precio"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "nomb_Prov": nombProv,
        "telefono_Prov": telefonoProv,
        "email_Prov": emailProv,
        "nomb_Empresa": nombEmpresa,
        "correo_Usuario": correoUsuario,
        "id_Producto": idProducto,
        "nom_Producto": nomProducto,
        "cant_Soli": cantSoli,
        "fecha_Registro": fechaRegistro,
        "nom_Usuario": nomUsuario,
        "estatus": estatus,
        "precio": precio,
        "id": id,
    };
}
