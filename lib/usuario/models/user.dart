// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    String? nomUser;
    String? apellido;
    String? correoElectronico;
    String? password;
    String? sesionToken;
    List<String>? roles = [];
    int? permiso;
    int? id;

    User({
        this.nomUser,
        this.apellido,
        this.correoElectronico,
        this.password,
        this.sesionToken,
        this.roles,
        this.permiso,
        this.id
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        nomUser: json["nomUser"],
        apellido: json["apellido"],
        correoElectronico: json["correoElectronico"],
        password: json["password"],
        sesionToken: json["token"],
        permiso: json["permiso"],
        roles: json["roles"] == null ? [] : List<String>.from(json["roles"]),
        id: json["id"]
    );

    Map<String, dynamic> toJson() => {
        "nomUser": nomUser,
        "apellido": apellido,
        "correoElectronico": correoElectronico,
        "password": password,
        "token": sesionToken,
        "permiso":permiso,
        "roles": roles,
        "id": id
    };
}
