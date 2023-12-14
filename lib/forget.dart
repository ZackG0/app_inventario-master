import 'package:app_inventario/main.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(ForgetPassword());
}
class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 56,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()), // Replace YourMainScreen() with the actual main screen widget
                        );
                      },
                      child: Text(
                        'Volver',
                        style: TextStyle(
                          color: Color(0xFF6ABDA6),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 172,
                    child: SizedBox(
                      width: constraints.maxWidth - 32,
                      child: Text(
                        'Ingresa tu correo y te enviaremos instrucciones para reiniciar tu contraseña',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: constraints.maxWidth,
                      height: 24,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: constraints.maxWidth,
                              height: 24,
                              decoration: BoxDecoration(color: Color(0xFFEDF0EF)),
                            ),
                          ),
                          Positioned(
                            left: constraints.maxWidth - 46,
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
                  Positioned(
                    left: 120,
                    top: 88,
                    child: SizedBox(
                      width: constraints.maxWidth - 32,
                      child: Text(
                        'Restablece tu\ncontraseña',
                        style: TextStyle(
                          color: Color(0xFF273330),
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 352,
                    child: Container(
                      width: constraints.maxWidth - 32,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: constraints.maxWidth - 32,
                              height: 56,
                              decoration: BoxDecoration(color: Color(0xFFF1F2F2)),
                            ),
                          ),
                          Positioned(
                            left: 56,
                            top: 18.40,
                            child: SizedBox(
                              width: constraints.maxWidth - 120,
                              child: Text(
                                'example@joinnus.com',
                                style: TextStyle(
                                  color: Color(0x99273330),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.0,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 16,
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 424,
                    child: Container(
                      width: constraints.maxWidth - 32,
                      height: 45,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: constraints.maxWidth - 32,
                              height: 45,
                              decoration: ShapeDecoration(
                                color: Color(0xFF6ABDA6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 41,
                            top: 13,
                            child: SizedBox(
                              width: constraints.maxWidth - 82,
                              child: Text(
                                'Restablecer contraseña',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFCFCFC),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 1.0,
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
          },
        ),
      ),
    );
  }
}