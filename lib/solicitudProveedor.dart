import 'package:flutter/material.dart';
import 'package:app_inventario/solicitudProveedor.dart';

void main() {
  runApp(solicitud());
}

class solicitud extends StatefulWidget {
  const solicitud({super.key});

  @override
  State<solicitud> createState() => _solicitudState();
}

class _solicitudState extends State<solicitud> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 360,
    height: 672,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Colors.white),
    child: Stack(
        children: [
            Positioned(
                left: 16,
                top: 40,
                child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [
                    ]),
                ),
            ),
            Positioned(
                left: 16,
                top: 860,
                child: SizedBox(
                    width: 329,
                    child: Text(
                        'Cancelar compra',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFFF5D57),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.19,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 282,
                top: 40,
                child: Text(
                    '15:59',
                    style: TextStyle(
                        color: Color(0xFFFF5D57),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.05,
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 112,
                child: Text(
                    'Solicitudes',
                    style: TextStyle(
                        color: Color(0xFF273330),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 911,
                child: Container(
                    width: 328,
                    height: 79,
                    decoration: BoxDecoration(
                        boxShadow: [
                            BoxShadow(
                                color: Color(0x598AA29B),
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 328,
                                    height: 79,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFFF7F9F8),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 13,
                                top: 15,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: [
                                    ]),
                                ),
                            ),
                            Positioned(
                                left: 45,
                                top: 13,
                                child: SizedBox(
                                    width: 233,
                                    child: Text(
                                        '¿Tienes alguna duda?',
                                        style: TextStyle(
                                            color: Color(0xFF273330),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            height: 0.07,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 45,
                                top: 37,
                                child: SizedBox(
                                    width: 230,
                                    child: Text(
                                        'Contacta a nuestro equipo de sorporte aquí',
                                        style: TextStyle(
                                            color: Color(0xFF6C7976),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0.10,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 199,
                child: Container(
                    width: 328,
                    height: 93,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF6F8F8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                width: 312,
                                height: 77,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 49,
                                            child: SizedBox(
                                                width: 91,
                                                child: Text(
                                                    '\$5000',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C7976),
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.11,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 118,
                                                height: 14,
                                                child: Text(
                                                    'Cant. soli.: 100 pz',
                                                    style: TextStyle(
                                                        color: Color(0xFF6ABDA6),
                                                        fontSize: 14,
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: 'ABeeZee',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 270,
                                            top: 0,
                                            child: SizedBox(
                                                width: 42,
                                                height: 14,
                                                child: Text(
                                                    'Status',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: SizedBox(
                                                width: 312,
                                                child: Text(
                                                    'Playera Nike Negra',
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 296,
                                            top: 61,
                                            child: Container(
                                                width: 16,
                                                height: 16,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 307,
                child: Container(
                    width: 328,
                    height: 93,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF6F8F8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                width: 312,
                                height: 77,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 49,
                                            child: SizedBox(
                                                width: 91,
                                                child: Text(
                                                    '\$5000',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C7976),
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.11,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 118,
                                                height: 14,
                                                child: Text(
                                                    'Cant. soli.: 100 pz',
                                                    style: TextStyle(
                                                        color: Color(0xFF6ABDA6),
                                                        fontSize: 14,
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: 'ABeeZee',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 270,
                                            top: 0,
                                            child: SizedBox(
                                                width: 42,
                                                height: 14,
                                                child: Text(
                                                    'Status',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: SizedBox(
                                                width: 312,
                                                child: Text(
                                                    'Playera Nike Negra',
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 296,
                                            top: 61,
                                            child: Container(
                                                width: 16,
                                                height: 16,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 15,
                top: 415,
                child: Container(
                    width: 328,
                    height: 93,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF6F8F8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                width: 312,
                                height: 77,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 49,
                                            child: SizedBox(
                                                width: 91,
                                                child: Text(
                                                    '\$5000',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C7976),
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.11,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 118,
                                                height: 14,
                                                child: Text(
                                                    'Cant. soli.: 100 pz',
                                                    style: TextStyle(
                                                        color: Color(0xFF6ABDA6),
                                                        fontSize: 14,
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: 'ABeeZee',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 270,
                                            top: 0,
                                            child: SizedBox(
                                                width: 42,
                                                height: 14,
                                                child: Text(
                                                    'Status',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: SizedBox(
                                                width: 312,
                                                child: Text(
                                                    'Playera Nike Negra',
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 296,
                                            top: 61,
                                            child: Container(
                                                width: 16,
                                                height: 16,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 15,
                top: 164,
                child: SizedBox(
                    width: 193,
                    child: Text(
                        'Tus entradas ',
                        style: TextStyle(
                            color: Color(0xFF273330),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 360,
                    height: 24,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 360,
                                    height: 24,
                                    decoration: BoxDecoration(color: Color(0xFFEDF0EF)),
                                ),
                            ),
                            Positioned(
                                left: 306,
                                top: 7,
                                child: Container(
                                    width: 46,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/46x10"),
                                            fit: BoxFit.fill,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ],
      ),
    );
  }
}