import 'package:flutter/material.dart';

class AppAlerts {
  static void warnig(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Oi, amigo! '),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
            content: SizedBox(
              height: 120.0,
              width: MediaQuery.of(context).size.width * .35,
              child: const Text("Infelizmente, o site para computador não está disponível no momento, pois está em desenvolvimento. Por favor, abra o site usando o seu celular, e não o seu tablet. Desculpe-me pelo inconveniente! Um abraço!"),
            ),
          );
        });
  }
}
