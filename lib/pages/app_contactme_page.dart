import 'package:flutter/material.dart';

import '../app_instances.dart';

class AppContactmePage extends StatefulWidget {
  const AppContactmePage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  State<AppContactmePage> createState() => _AppContactmePageState();
}

class _AppContactmePageState extends State<AppContactmePage> {
  Color _setColorIndicator() {
    if (AppInstances.instance.globalStore.darkModeActivated) {
      return const Color(0xFFE1C648);
    } else {
      return const Color(0xFF6E5D00);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: widget._mediaSize.height * .15, bottom: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Contate me',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 1.5),
                    const Text('Pegue um toque', style: TextStyle(fontSize: 12.5)),
                    const SizedBox(height: 50.0),
                    AppCantactMedDatas(
                      icon: Icon(Icons.call_outlined, color: _setColorIndicator()),
                      title: 'Ligue Me',
                      subtitle: '877-134-964',
                    ),
                    AppCantactMedDatas(
                      icon: Icon(Icons.email_outlined, color: _setColorIndicator()),
                      title: 'Email',
                      subtitle: 'farioso.f@gmail.com',
                    ),
                    AppCantactMedDatas(
                      icon: Icon(Icons.location_on_outlined, color: _setColorIndicator()),
                      title: 'Localização',
                      subtitle: 'Maputo - Zimpeto. Magoanine C',
                    ),
                    const SizedBox(height: 50.0),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nome',
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
                        hintText: 'Seu projeto',
                      ),
                    ),
                    const SizedBox(height: 22),
                    const TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Descreva para mim o seu projeto',
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
                width: widget._mediaSize.width,
                padding: const EdgeInsets.all(22.0),
                color: const Color(0xFFE1C648),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Farioso', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        Text('Software developer', style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
                    ),
                    // const Text('Services', style: TextStyle(fontWeight: FontWeight.normal)),
                    // const Text('Portfolio', style: TextStyle(fontWeight: FontWeight.normal)),
                    // const Text('Contactme', style: TextStyle(fontWeight: FontWeight.normal)),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                      Text('@ Nexu Creativo. Todos os direitos reservados', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.5)),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
