import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AppAboutPage extends StatelessWidget {
  const AppAboutPage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22),
        child: (_mediaSize.width >= 600) ? const AppTableLayout() : const AppPhoneLayout(),
      ),
    );
  }
}

class AppPhoneLayout extends StatelessWidget {
  const AppPhoneLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Sobre',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 1.5),
          const Text('A minha introdução', style: TextStyle(fontSize: 12.5)),
          const SizedBox(height: 50.0),
          SizedBox(
              height: 180,
              width: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const Image(image: AssetImage('assets/img/about.jpg')),
              )),
          const SizedBox(height: 16.0),
          const Text(
            'Desenvolvedor de software, com amplo conhecimento e anos de experiência, atuando em tecnologias mobile e design Ui/Ux, entregando um trabalho de qualidade.',
            style: TextStyle(fontSize: 12.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 22.0),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                child: Column(children: const [
                  Text(
                    '10+',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Anos\nexperiência',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.5),
                  ),
                ]),
              ),
              SizedBox(
                child: Column(children: const [
                  Text(
                    '20+',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Projetos\ncompostos',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.5),
                  ),
                ]),
              ),
              SizedBox(
                child: Column(children: const [
                  Text(
                    '03+',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Empresas\ntrabalhadas',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.5),
                  ),
                ]),
              ),
            ]),
          ),
          const SizedBox(height: 22.0),
          FilledButton(
              onPressed: () {},
              child: SizedBox(
                width: 145,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                  Text('Baixar currículo'),
                  SizedBox(width: 8.0),
                  Icon(Icons.download_rounded),
                ]),
              )),
        ],
      );
    });
  }
}

class AppTableLayout extends StatelessWidget {
  const AppTableLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Sobre',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 1.5),
          const Text('A minha introdução', style: TextStyle(fontSize: 12.5)),
          const SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 180,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: const Image(image: AssetImage('assets/img/about.jpg')),
                  )),
              const SizedBox(width: 16.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Desenvolvedor de software, com amplo\nconhecimento e anos de\nexperiência, atuando em\ntecnologias\ne Web e Ui/Ux design,\nentregando um trabalho de qualidade. extensive\nknowledge and years of\nexperience, working in web\ntechnologles\nand Ui / Ux design,\ndelivering quality work.',
                    style: TextStyle(fontSize: 12.5),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 22.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      SizedBox(
                        child: Column(children: const [
                          Text(
                            '10+',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Years\nexperience',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.5),
                          ),
                        ]),
                      ),
                      SizedBox(
                        child: Column(children: const [
                          Text(
                            '20+',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Projetos\ncompostos',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.5),
                          ),
                        ]),
                      ),
                      SizedBox(
                        child: Column(children: const [
                          Text(
                            '03+',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Empresas\ntrabalhadas',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.5),
                          ),
                        ]),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 22.0),
                  FilledButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: 145,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                          Text('Baixar currículo'),
                          SizedBox(width: 8.0),
                          Icon(Icons.download_rounded),
                        ]),
                      )),
                ],
              ),
            ],
          ),
        ],
      );
    });
  }
}
