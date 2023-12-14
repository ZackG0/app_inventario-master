import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'check_internet_connection.dart';
import 'connection_status_controller.dart';

class WarningWidgetGetX extends StatelessWidget {
  const WarningWidgetGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConnectionStatusController());
    return Obx(() {
      return Visibility(
        visible: controller.status.value != ConnectionStatus.online,
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 60,
          color: Color.fromARGB(255, 213, 45, 33),
          child: Row(children: const [
            Icon(Icons.wifi_off),
            SizedBox(width: 8),
            Text(
              'No internet connection.',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ),
      );
    });
  }
}
