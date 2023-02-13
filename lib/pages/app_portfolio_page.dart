import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../app_instances.dart';
import '../models/app_page_direction.dart';
import '../widgets/app_carossel.dart';
import '../widgets/app_page_pointers.dart';

const List<String> _assetNames = <String>["assets/img/portfolio1.jpg", "assets/img/portfolio2.jpg", "assets/img/portfolio3.jpg"];

class AppPortfolioPage extends StatefulWidget {
  const AppPortfolioPage({
    super.key,
    required Size mediaSize,
    required PageController rootPageController,
  })  : _mediaSize = mediaSize,
        _rootPageController = rootPageController;

  final Size _mediaSize;
  final PageController _rootPageController;

  @override
  State<AppPortfolioPage> createState() => _AppPortfolioPageState();
}

class _AppPortfolioPageState extends State<AppPortfolioPage> {
  final PageController _pageController = PageController();
  final PageController _testimonialController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: widget._mediaSize.height * .15, bottom: 65),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Portfolio',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 1.5),
              const Text('Trabalhos mais recentes', style: TextStyle(fontSize: 12.5)),
              const SizedBox(height: 50.0),
              SizedBox(
                width: widget._mediaSize.width,
                height: widget._mediaSize.height * .55,
                child: Stack(
                  children: [
                    // the page view
                    PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (page) {
                        AppInstances.instance.globalStore.page = page;
                      },
                      children: [
                        CarrosselViewItem(mediaSize: widget._mediaSize, title: 'Website Moderno', description: 'Sites adaptáveis a todos os dispositivos, com componentes de interface do usuário e interações animadas.', asset: _assetNames[0]),
                        CarrosselViewItem(mediaSize: widget._mediaSize, title: 'Brand Design', description: 'Trabalhos criativos e inovadores de design de marca para clientes de todos os setores.', asset: _assetNames[1]),
                        CarrosselViewItem(mediaSize: widget._mediaSize, title: 'Loja Virtual', description: 'Especializado em lojas virtuais. Eexperiência em criação de sites responsivos, integração com plataformas de e-commerce, entre outros.', asset: _assetNames[2]),
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () => _navigation(NavigationDirection.back, _pageController.page!.toInt(), controller: _pageController),
                          icon: const Icon(Icons.chevron_left_rounded),
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () => _navigation(NavigationDirection.forward, _pageController.page!.toInt(), controller: _pageController),
                          icon: const Icon(Icons.chevron_right_rounded),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Observer(builder: (_) {
                return AppMarketPoints(controller: _pageController, storeController: AppInstances.instance.globalStore.page);
              }),
              const SizedBox(height: 45.0),
              Container(
                height: widget._mediaSize.height * .65,
                width: widget._mediaSize.width,
                color: const Color(0xFFE1C648),
                padding: const EdgeInsets.only(left: 22, top: 22, right: 22),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Column(
                    children: const [
                      Text('Você tem um novo projeto', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                      Text(
                        'Contacte-me agora e obtenha um desconto de 30% no seu novo projeto',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150.0,
                    child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(const Color(0xFFE1C648)),
                        ),
                        onPressed: () {
                          widget._rootPageController.animateToPage(5, duration: const Duration(milliseconds: 1200), curve: Curves.ease);
                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                          Text('Contate Me'),
                          SizedBox(width: 8.0),
                          Icon(Icons.send_rounded, color: Color(0xFFE1C648)),
                        ])),
                  ),
                  SizedBox(
                    height: widget._mediaSize.height * .40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                        image: AssetImage('assets/img/my-new-profile-photo-removebg-preview.png'),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 50.0),
              const Text('Depoimento',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 1.5),
              const Text('O que meus clientes dizem', style: TextStyle(fontSize: 12.5)),
              const SizedBox(height: 50.0),
              SizedBox(
                height: 170,
                width: widget._mediaSize.width,
                child: Stack(
                  children: [
                    // the page view
                    SizedBox(
                      width: widget._mediaSize.width,
                      child: PageView(
                        controller: _testimonialController,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (page) {
                          AppInstances.instance.globalStore.testimonialPage = page;
                        },
                        children: [
                          AppTestiomonialClient(
                            mediaSize: widget._mediaSize,
                            clientComentary: "Ouh! Eu amei o trabalho dele. Eu sou fã de cores e... assim, eu amei a forma como ele usou o degrade no meu projeto. Simplesmente incrivel!",
                            picture: 'assets/img/testimonial1.jpg',
                            clientName: 'Sara Smith',
                          ),
                          AppTestiomonialClient(
                            mediaSize: widget._mediaSize,
                            clientComentary: "Tenho uma boa impressão, realizou meu projeto com toda a qualidade possível e atenção e suporte 24 horas por dia.",
                            picture: 'assets/img/testimonial2.jpg',
                            clientName: 'Keven Maidess',
                          ),
                          AppTestiomonialClient(
                            mediaSize: widget._mediaSize,
                            clientComentary: "Há há há... meu grande amigo. Depois de ter feito um projeto para mim, não desgrudo mais dele. O trabalho dele é simplesmente fantástico.",
                            picture: 'assets/img/testimonial3.jpg',
                            clientName: 'Gerson Savele',
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () => _navigation(NavigationDirection.back, _testimonialController.page!.toInt(), controller: _testimonialController),
                          icon: const Icon(Icons.chevron_left_rounded),
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () => _navigation(NavigationDirection.forward, _testimonialController.page!.toInt(), controller: _testimonialController),
                          icon: const Icon(Icons.chevron_right_rounded),
                        )),
                  ],
                ),
              ),
              Observer(builder: (_) {
                return AppMarketPoints(controller: _testimonialController, storeController: AppInstances.instance.globalStore.testimonialPage);
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _navigation(NavigationDirection navdirection, int page, {required PageController controller}) {
    void navigationForward(int page) {
      void go(int to) => controller.animateToPage(to, duration: const Duration(milliseconds: 1200), curve: Curves.ease);
      if (page == 0) {
        go(1);
      } else if (page == 1) {
        go(2);
      } else if (page == 2) {
        go(0);
      }
    }

    void navigationBack(int page) {
      void go(int to) => controller.animateToPage(to, duration: const Duration(milliseconds: 1200), curve: Curves.ease);
      if (page == 2) {
        go(1);
      } else if (page == 1) {
        go(0);
      } else if (page == 0) {
        go(2);
      }
    }

    void toWhere(int page) {
      controller.animateToPage(page, duration: const Duration(milliseconds: 1200), curve: Curves.ease);
    }

    if (navdirection == NavigationDirection.forward) {
      navigationForward(page);
    } else if (navdirection == NavigationDirection.back) {
      navigationBack(page);
    } else if (navdirection == NavigationDirection.especifify) {
      toWhere(page);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _testimonialController.dispose();
  }
}

class AppTestiomonialClient extends StatelessWidget {
  const AppTestiomonialClient({
    super.key,
    required Size mediaSize,
    required this.picture,
    required this.clientName,
    required this.clientComentary,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;
  final String picture, clientName, clientComentary;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(picture),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  width: _mediaSize.width - 120,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text('   $clientName', style: const TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      // width: 90,
                      child: Row(
                        children: const [Icon(Icons.star, size: 16), SizedBox(width: 5), Icon(Icons.star, size: 16), SizedBox(width: 5), Icon(Icons.star, size: 16), SizedBox(width: 5), Icon(Icons.grade_outlined, size: 16), SizedBox(width: 5), Icon(Icons.grade_outlined, size: 16)],
                      ),
                    ),
                  ]),
                ),
                Row(
                  children: const [
                    Text('   Cliente', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ]),
            ],
          ),
          const SizedBox(height: 15.0),
          Text(
            clientComentary,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 25.0),
        ]));
  }
}
