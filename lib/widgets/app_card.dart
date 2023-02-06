import 'package:flutter/material.dart';

import '../app_instances.dart';

class AppCard extends StatelessWidget {
  final String service, serviceName;
  final Icon icon;
  final List<String> servicesList;

  const AppCard({
    super.key,
    required this.service,
    required this.icon,
    required this.serviceName,
    required this.servicesList,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          SizedBox(
            width: 85,
            // height: 110,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              icon,
              const SizedBox(height: 15.0),
              Text(
                service,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          ButtonTheme(
              child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: SizedBox(
                    child: Row(children: const [
                  Text('Ver mais'),
                  Icon(Icons.arrow_forward_rounded),
                ])),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(serviceName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              IconButton(
                                onPressed: () => Navigator.of(context).pop(),
                                icon: const Icon(Icons.close_rounded),
                              ),
                            ],
                          ),
                          content: SizedBox(
                            height: 120.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (var serviceElement in servicesList)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outlined,
                                        color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text(serviceElement, style: const TextStyle(fontSize: 12.0)),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
