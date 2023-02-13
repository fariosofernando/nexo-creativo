import 'package:flutter/material.dart';

import '../app_instances.dart';
import '../models/app_page_direction.dart';

class AppMarketPoints extends StatefulWidget {
  final PageController controller;

  final num storeController;

  const AppMarketPoints({super.key, required this.controller, required this.storeController});

  @override
  State<AppMarketPoints> createState() => _AppMarketPointsState();
}

class _AppMarketPointsState extends State<AppMarketPoints> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Pointers(
            callBack: () => _navigation(NavigationDirection.especifify, 0, controller: widget.controller),
            color: _setColorIndicator(0.0, storeController: widget.storeController),
          ),
          Pointers(
            callBack: () => _navigation(NavigationDirection.especifify, 1, controller: widget.controller),
            color: _setColorIndicator(1.0, storeController: widget.storeController),
          ),
          Pointers(
            callBack: () => _navigation(NavigationDirection.especifify, 2, controller: widget.controller),
            color: _setColorIndicator(2.0, storeController: widget.storeController),
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

class Pointers extends StatefulWidget {
  const Pointers({super.key, required this.callBack, required this.color});
  final Function callBack;
  final Color color;

  @override
  State<Pointers> createState() => _PointersState();
}

class _PointersState extends State<Pointers> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.callBack();
      },
      child: Container(
        alignment: Alignment.center,
        height: 25,
        width: 25,
        color: !AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFFFFBFF) : const Color(0xFF1D1B16),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}
