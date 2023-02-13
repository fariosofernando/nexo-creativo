import 'package:flutter/material.dart';

import '../app_instances.dart';

class WorkTile extends StatelessWidget {
  const WorkTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double uniformeSize = 100.0;

    return Column(children: [
      const Icon(Icons.business_center),
      const SizedBox(width: 5.0),
      const Text('Trabalho'),
      const SizedBox(height: 22),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: uniformeSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Automation\nEngineer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'PBX - Maputo',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2023 - 2023',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: uniformeSize + 25,
            ),
            SizedBox(
              height: uniformeSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Software\nDeveloper',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Cuppen - Maputo',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2019',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
          child: Column(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: uniformeSize,
                width: 1.5,
                color: Colors.grey,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: uniformeSize,
                width: 1.5,
                color: Colors.grey,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: uniformeSize,
            ),
            SizedBox(
              height: uniformeSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Software\nEngineer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Só Saúde - Maputo',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2021 - 2023',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    ]);
  }
}
