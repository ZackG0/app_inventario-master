import 'package:app_inventario/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Register());
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 24,
                  color: Color(0xFFEDF0EF),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.network("https://via.placeholder.com/46x10"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Hola bienvenido, Regístrate ahora :)',
                  style: TextStyle(
                    color: Color(0xFF273330),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F2F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Correo',
                      style: TextStyle(
                        color: Color(0x99273330),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F2F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Nombre',
                      style: TextStyle(
                        color: Color(0x99273330),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F2F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Contraseña',
                      style: TextStyle(
                        color: Color(0x99273330),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F2F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Número',
                      style: TextStyle(
                        color: Color(0x99273330),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 104,
                  width: 313,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://via.placeholder.com/18x18"),
                                          fit: BoxFit.fill,
                                        ),
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
                        left: 0,
                        top: 32,
                        child: Container(
                          width: 24,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://via.placeholder.com/18x18"),
                                          fit: BoxFit.fill,
                                        ),
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
                        left: 32,
                        top: 0,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'He leído y acepto los ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.24,
                                  letterSpacing: 0.15,
                                ),
                              ),
                              TextSpan(
                                text: 'Términos y Condiciones.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0.24,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 32,
                        child: SizedBox(
                          width: 281,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      '¿Usted ha leído y acepta los términos y condiciones para el tratamiento de sus datos personales contenidos en la ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.24,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Política de Privacidad Web',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0.24,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                                TextSpan(
                                  text: '?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.24,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 412,
                        top: 0,
                        child: Container(
                          width: 121,
                          height: 48,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 121,
                                child: Text(
                                  'TAB',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.6000000238418579),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                    letterSpacing: 0.75,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 0,
                        child: Container(
                          width: 90,
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 90,
                                  height: 48,
                                  child: Stack(children: []),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 15.60,
                                child: SizedBox(
                                  width: 90,
                                  child: Text(
                                    'Register',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF6ABDA6),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.08,
                                      letterSpacing: 0.75,
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
                        top: 0,
                        child: Container(
                          width: 104,
                          height: 48,
                          padding: const EdgeInsets.only(
                            top: 16,
                            left: 23,
                            right: 22,
                            bottom: 16,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 59,
                                child: Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.6000000238418579),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                    letterSpacing: 0.75,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}