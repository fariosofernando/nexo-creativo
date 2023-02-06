import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../app_instances.dart';

class AppContactmePage extends StatelessWidget {
  const AppContactmePage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  Color _setColorIndicator() {
    if (AppInstances.instance.globalStore.darkModeActivated) {
      return const Color(0xFFE1C648);
    } else {
      return const Color(0xFF6E5D00);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: _mediaSize.height * .15, bottom: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 22, left: 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Contact Med',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 1.5),
                      const Text('Get in touch', style: TextStyle(fontSize: 12.5)),
                      const SizedBox(height: 50.0),
                      AppCantactMedDatas(
                        icon: Icon(Icons.call_outlined, color: _setColorIndicator()),
                        title: 'Call Me',
                        subtitle: '999-777-666',
                      ),
                      AppCantactMedDatas(
                        icon: Icon(Icons.email_outlined, color: _setColorIndicator()),
                        title: 'Email',
                        subtitle: 'alexa@email.com',
                      ),
                      AppCantactMedDatas(
                        icon: Icon(Icons.location_on_outlined, color: _setColorIndicator()),
                        title: 'Location',
                        subtitle: 'Peru - Lima Av. Bolivar #123',
                      ),
                      const SizedBox(height: 50.0),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Name',
                        ),
                      ),
                      const SizedBox(height: 22),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 22),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Project',
                        ),
                      ),
                      const SizedBox(height: 22),
                      const TextField(
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Message',
                        ),
                      ),
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          SizedBox(
                            width: 165.0,
                            child: FilledButton(
                                onPressed: () {},
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                                  Text('Send Message'),
                                  SizedBox(width: 8.0),
                                  Icon(Icons.send_rounded),
                                ])),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 70),
                Container(
                  height: 185,
                  width: _mediaSize.width,
                  padding: const EdgeInsets.all(22.0),
                  color: const Color(0xFFE1C648),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Alexa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                          Text('Frontend developer', style: TextStyle(fontWeight: FontWeight.normal)),
                        ],
                      ),
                      // const Text('Services', style: TextStyle(fontWeight: FontWeight.normal)),
                      // const Text('Portfolio', style: TextStyle(fontWeight: FontWeight.normal)),
                      // const Text('Contactme', style: TextStyle(fontWeight: FontWeight.normal)),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                        Text('@ Farioso Fernando. All right reserved', style: TextStyle(fontWeight: FontWeight.normal)),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class AppCantactMedDatas extends StatelessWidget {
  final Icon icon;
  final String title, subtitle;
  const AppCantactMedDatas({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      icon,
      const SizedBox(width: 8.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    ]);
  }
}
