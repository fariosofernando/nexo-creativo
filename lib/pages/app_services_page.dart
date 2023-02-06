import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class AppServicesPage extends StatelessWidget {
  const AppServicesPage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 22, right: 22, bottom: 60, top: _mediaSize.height * .15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Services',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 1.5),
              Text('What i after', style: TextStyle(fontSize: 12.5)),
              SizedBox(height: 50.0),
              AppCard(
                service: 'Ui/Ux\nDesigner',
                icon: Icon(Icons.space_dashboard_outlined),
                serviceName: 'Ui/Ux design',
                servicesList: [
                  'I develop the user interface',
                  'Web page development',
                  'I create ux element interactions',
                  'I position your company brand',
                ],
              ),
              AppCard(
                service: 'Frontend\nDeveloper',
                icon: Icon(Icons.code_rounded),
                serviceName: 'Frontend developer',
                servicesList: [
                  'I develop the user interface',
                  'Web page development',
                  'I create ux element interactions',
                  'I position your company brand',
                ],
              ),
              AppCard(
                service: 'Branding\nDesigner',
                icon: Icon(Icons.brush_outlined),
                serviceName: 'Branding designer',
                servicesList: [
                  'I develop the user interface',
                  'Web page development',
                  'I create ux element interactions',
                  'I position your company brand',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
