import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/app_instances.dart';

import 'app_alert_open_your_phone.dart';
import 'pages/app_about_page.dart';
import 'pages/app_portfolio_page.dart';
import 'pages/app_services_page.dart';
import 'pages/app_skills_page.dart';
import 'widgets/app_bottom_bar.dart';
import 'pages/app_home_page.dart';
import 'pages/app_contactme_page.dart';

class AppDashboard extends StatefulWidget {
  final String title;

  const AppDashboard({super.key, required this.title});

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;

    return Observer(builder: (context) {
      return Stack(children: [
        Align(
          alignment: Alignment.center,
          child: PageView(
            onPageChanged: (page) {
              AppInstances.instance.globalStore.currentPage = page;
            },
            controller: _pageController,
            scrollDirection: Axis.vertical,
            // pageSnapping: false,
            children: (mediaSize.width > 780)
                ? [
                    AppHomePage(
                      mediaSize: mediaSize,
                    ),
                  ]
                : [
                    AppHomePage(
                      mediaSize: mediaSize,
                    ),
                    AppAboutPage(
                      mediaSize: mediaSize,
                    ),
                    AppSkillsPage(
                      mediaSize: mediaSize,
                    ),
                    AppServicesPage(
                      mediaSize: mediaSize,
                    ),
                    AppPortfolioPage(
                      mediaSize: mediaSize,
                    ),
                    AppContactmePage(
                      mediaSize: mediaSize,
                    ),
                  ],
          ),
        ),
        Align(
          alignment: (mediaSize.width >= 800.0) ? Alignment.topCenter : Alignment.bottomCenter,
          child: AppBottonBar((page) {
            _pageController.animateToPage(page, duration: const Duration(milliseconds: 1200), curve: Curves.ease);
          }),
        ),
        Visibility(
          visible: (mediaSize.width >= 780),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: mediaSize.width,
              alignment: Alignment.centerLeft,
              height: 35,
              color: const Color(0xFFE1C648),
              child: Row(
                children: const [
                  SizedBox(width: 22.0),
                  Icon(Icons.warning_amber_outlined),
                  SizedBox(width: 8.0),
                  Text('Acessa o website pelo seu celular para navegar. Não use um tablet para isso.', style: TextStyle(fontSize: 12.5)),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: (AppInstances.instance.globalStore.currentPage != 0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 22.0, bottom: 60.0),
              child: FloatingActionButton(
                  onPressed: () {
                    _pageController.animateToPage(0, duration: const Duration(milliseconds: 1200), curve: Curves.ease);
                  },
                  child: const Icon(Icons.arrow_upward_rounded)),
            ),
          ),
        ),
      ]);
    });
  }
}
