import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorConexionPage extends StatelessWidget {
  const ErrorConexionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.signal_wifi_bad_sharp,
              size: 250,
            ),
            const SizedBox(height: 15),
            const Text(
              'No estás conectado al servidor',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
              //width: 60,
              child: ElevatedButton(
                  onPressed: () {
                    goToHome();
                  },
                  child: const Text('Intenta conectarse de nuevamente',
                      style: TextStyle(color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }

  void goToHome() {
    Get.offNamedUntil('/home', (route) => false);
  }
}
