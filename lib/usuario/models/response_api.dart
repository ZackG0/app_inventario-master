// To parse this JSON data, do
//
//     final ResponseApi = ResponseApiFromJson(jsonString);

import 'dart:convert';

ResponseApi responseApiFromJson(String str) => ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
    bool? success;
    bool? estatus;
    String? message;
    dynamic data;

    ResponseApi({
        this.success,
        this.message,
        this.data,
        this.estatus
    });

    factory ResponseApi.fromJson(Map<String, dynamic> json) => ResponseApi(
        success: json["success"],
        message: json["message"],
        data: json["data"],
        estatus: json["estatus"]
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "estatus": estatus,
        "data":data
    };
}
