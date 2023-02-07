import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../widgets/app_card.dart';

class AppServicesPage extends StatelessWidget {
  const AppServicesPage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 22, right: 22, bottom: 60, top: _mediaSize.height * .15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Serviços',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 1.5),
                Text('O que eu ofereço', style: TextStyle(fontSize: 12.5)),
                SizedBox(height: 50.0),
                AppCard(
                  service: 'Ui/Ux\nDesigner',
                  icon: Icon(Icons.space_dashboard_outlined),
                  serviceName: 'Ui/Ux design',
                  servicesList: [
                    'Eu desenvolvo a interface do usuário',
                    'Eu crio interações de elemento ux',
                    'Posiciono a marca da sua empresa',
                  ],
                ),
                AppCard(
                  service: 'Software\nDeveloper',
                  icon: Icon(Icons.code_rounded),
                  serviceName: 'Frontend developer',
                  servicesList: [
                    'Desenvolvimento de página da Web',
                    'Desenvolvimento de aplicativo mobile',
                    'Desenvolvimento de aplicativo desktop',
                  ],
                ),
                AppCard(
                  service: 'Branding\nDesigner',
                  icon: Icon(Icons.brush_outlined),
                  serviceName: 'Branding designer',
                  servicesList: [
                    'Crio e conceitualizo sua marca',
                    'Desenvolvo sua identidade visual',
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
