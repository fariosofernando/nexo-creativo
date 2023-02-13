import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_alert_open_your_phone.dart';
import '../app_instances.dart';
import '../widgets/app_asset_icon_button.dart';

const List<String> _assetNames = <String>["assets/img/farioso.png"];

class AppHomePage extends StatefulWidget {
  const AppHomePage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  // (_mediaSize.width >= 900) ? const AppTableLayout() : const AppPhoneLayout(),
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: (widget._mediaSize.width >= 800) ? DesktopLayout(mediaSize: widget._mediaSize) : PhoneLayout(mediaSize: widget._mediaSize),
    );
  }
}

class PhoneLayout extends StatelessWidget {
  const PhoneLayout({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: _mediaSize.width,
          padding: const EdgeInsets.only(left: 8, right: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: Column(
                  children: [
                    AssetIconButton(
                      touch: () {},
                      darkAsset: 'assets/img/linkedin-icon-colored.svg',
                      lightAsset: 'assets/img/linkedin-icon.svg',
                    ),
                    const SizedBox(height: 8.0),
                    Observer(builder: (_) {
                      return Container(
                        height: 28,
                        width: 28,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF1D1B16),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(Icons.language, color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFF1D1B16) : const Color(0xFFFFFBFF)),
                      );
                    }),
                    const SizedBox(height: 8.0),
                    AssetIconButton(
                      touch: () {},
                      darkAsset: 'assets/img/github-icon-colored.svg',
                      lightAsset: 'assets/img/github-icon.svg',
                    ),
                  ],
                ),
              ),
              Image.asset(
                _assetNames[0],
                height: 200,
                // cacheHeight: 200,
                // cacheWidth: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
        const SizedBox(height: 22.0),
        Container(
          width: _mediaSize.width,
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Olá, eu sou o Farioso",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5.0),
              Text('Software Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 8.0),
              Text(
                'Experiência de alto nível em Ui/Ux design e conhecimento em desenvolvimento de software, produzindo trabalhos de qualidade.',
                style: TextStyle(fontSize: 12.5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 22.0),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: FilledButton(
                  onPressed: () {},
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                    Text('Contate Me'),
                    SizedBox(width: 8.0),
                    Icon(Icons.send_rounded),
                  ])),
            ),
          ],
        )
      ],
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: _mediaSize.width,
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.workspaces_outlined),
                    ),
                    // const SizedBox(width: 8.0),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.language),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.code),
                    ),
                  ],
                ),
              ),
              Column(children: [
                Container(
                  // width: _mediaSize.width,
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Olá, eu sou o Farioso",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 5.0),
                      const Text('Software Developer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Experiência de alto nível em Ui/Ux design e conhecimento\n em desenvolvimento de software, produzindo\ntrabalhos de qualidade.',
                        style: TextStyle(fontSize: 12.5),
                      ),
                      const SizedBox(height: 22.0),
                      SizedBox(
                        width: 150.0,
                        child: FilledButton(
                            onPressed: () {},
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                              Text('Contate Me'),
                              SizedBox(width: 8.0),
                              Icon(Icons.send_rounded),
                            ])),
                      ),
                      const SizedBox(height: 22.0),
                      TextButton(
                        onPressed: () => AppAlerts.warnig(context),
                        child: Row(
                          children: const [
                            Icon(Icons.mouse_outlined),
                            SizedBox(width: 8.0),
                            Text('Role para baixo '),
                            Icon(Icons.arrow_downward, size: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Image.asset(
                _assetNames[0],
                height: 250,
                // cacheHeight: 200,
                // cacheWidth: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
        const SizedBox(height: 22.0),
      ],
    );
  }
}
