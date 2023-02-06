import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../app_instances.dart';
import '../widgets/app_carossel.dart';

const List<String> _assetNames = <String>["assets/img/portfolio1.jpg", "assets/img/portfolio2.jpg", "assets/img/portfolio3.jpg"];

enum NavigationDirection { forward, back, especifify }

class AppPortfolioPage extends StatefulWidget {
  const AppPortfolioPage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  State<AppPortfolioPage> createState() => _AppPortfolioPageState();
}

class _AppPortfolioPageState extends State<AppPortfolioPage> {
  final PageController _pageController = PageController();
  final PageController _testimonialController = PageController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
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
                const Text('Most recentes works', style: TextStyle(fontSize: 12.5)),
                const SizedBox(height: 50.0),
                SizedBox(
                  width: widget._mediaSize.width,
                  height: widget._mediaSize.height * .50,
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
                          CarrosselViewItem(mediaSize: widget._mediaSize, title: 'Modern Website', description: 'Website adaptable to all devices, with ui components and animated interactions.', asset: _assetNames[0]),
                          CarrosselViewItem(mediaSize: widget._mediaSize, title: 'Brand Design', description: 'Website adaptable to all devices, with ui components and animated interactions.', asset: _assetNames[1]),
                          CarrosselViewItem(mediaSize: widget._mediaSize, title: 'Online Store', description: 'Website adaptable to all devices, with ui components and animated interactions.', asset: _assetNames[2]),
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
                AppMarketPoints(controller: _pageController, storeController: AppInstances.instance.globalStore.page),
                const SizedBox(height: 45.0),
                Container(
                  height: widget._mediaSize.height * .60,
                  width: widget._mediaSize.width,
                  color: const Color(0xFFE1C648),
                  padding: const EdgeInsets.only(left: 22, top: 22, right: 22),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Column(
                      children: const [
                        Text('You hava a new project', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                        Text(
                          'Contact me now and get a 30% discount an your new project',
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
                          onPressed: () {},
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                            Text('Contact Me'),
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
                const Text('Testimonial',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 1.5),
                const Text('My client soying', style: TextStyle(fontSize: 12.5)),
                const SizedBox(height: 50.0),
                SizedBox(
                  height: 150,
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
                              clientComentary: "I get a good impression, i carry out my project with all the possible quality and attention and support 24 hours a day.",
                              picture: 'assets/img/testimonial1.jpg',
                              clientName: 'Sara Smith',
                            ),
                            AppTestiomonialClient(
                              mediaSize: widget._mediaSize,
                              clientComentary: "I get a good impression, i carry out my project with all the possible quality and attention and support 24 hours a day.",
                              picture: 'assets/img/testimonial2.jpg',
                              clientName: 'Sara Smith',
                            ),
                            AppTestiomonialClient(
                              mediaSize: widget._mediaSize,
                              clientComentary: "I get a good impression, i carry out my project with all the possible quality and attention and support 24 hours a day.",
                              picture: 'assets/img/testimonial3.jpg',
                              clientName: 'Sara Smith',
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
                AppMarketPoints(controller: _testimonialController, storeController: AppInstances.instance.globalStore.testimonialPage),
              ],
            ),
          ),
        ),
      );
    });
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
        padding: const EdgeInsets.only(left: 35, right: 15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(picture),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  width: _mediaSize.width - 100,
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
                    Text('   Client', style: TextStyle(fontSize: 12, color: Colors.grey)),
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

class AppMarketPoints extends StatelessWidget {
  final PageController controller;

  final num storeController;

  const AppMarketPoints({super.key, required this.controller, required this.storeController});

  final double _switchUniSize = 8.0;

  final double _switchUniBorder = 16.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => _navigation(NavigationDirection.especifify, 0, controller: controller),
            child: Container(
              height: _switchUniSize,
              width: _switchUniSize,
              decoration: BoxDecoration(
                color: _setColorIndicator(0.0, storeController: storeController),
                borderRadius: BorderRadius.circular(_switchUniBorder),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _navigation(NavigationDirection.especifify, 1, controller: controller),
            child: Container(
              height: _switchUniSize,
              width: _switchUniSize,
              decoration: BoxDecoration(
                color: _setColorIndicator(1.0, storeController: storeController),
                borderRadius: BorderRadius.circular(_switchUniBorder),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _navigation(NavigationDirection.especifify, 2, controller: controller),
            child: Container(
              height: _switchUniSize,
              width: _switchUniSize,
              decoration: BoxDecoration(
                color: _setColorIndicator(2.0, storeController: storeController),
                borderRadius: BorderRadius.circular(_switchUniBorder),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _setColorIndicator(num page, {required num storeController}) {
    if (storeController == page) {
      return AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00);
    } else {
      return AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFF6E5D00) : Colors.grey;
    }
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
}
