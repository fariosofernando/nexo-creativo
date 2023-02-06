import 'package:flutter/material.dart';

import '../app_alert_open_your_phone.dart';
import '../app_instances.dart';

class AppMenuDesktopItem extends StatelessWidget {
  final String text;
  final Function? action;
  final bool active;
  const AppMenuDesktopItem({
    super.key,
    required this.text,
    this.action,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 100,
      child: TextButton(
        onPressed: () {
          Function? callBack = action;
          if (callBack != null) {
            callBack();
          }
        },
        child: Text(text, style: TextStyle(color: _setColor())),
      ),
    );
  }

  Color _setColor() {
    if (active) {
      if (AppInstances.instance.globalStore.darkModeActivated) {
        return const Color(0xFFE1C648);
      } else {
        return const Color(0xFF6E5D00);
      }
    } else {
      if (AppInstances.instance.globalStore.darkModeActivated) {
        return Colors.white;
      } else {
        return const Color(0xFF1D1B16);
      }
    }
  }
}

class AppMenuItem extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function? action;
  const AppMenuItem({
    super.key,
    required this.text,
    required this.icon,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(children: [
        IconButton(
          onPressed: () {
            Function? callBack = action;
            if (callBack != null) {
              callBack();
            }
          },
          icon: icon,
        ),
        Text(text),
      ]),
    );
  }
}

typedef AppBottonBarCallback = void Function(int);

class AppBottonBar extends StatefulWidget {
  const AppBottonBar(this.pageClick, {super.key});

  final AppBottonBarCallback pageClick;

  @override
  State<AppBottonBar> createState() => _AppBottonBarState();
}

class _AppBottonBarState extends State<AppBottonBar> {
  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.width >= 800) ? BottonBarDesktopLayout(pageClick: widget.pageClick) : BottonBarPhoneLayout(pageClick: widget.pageClick);
  }
}

class BottonBarDesktopLayout extends StatefulWidget {
  const BottonBarDesktopLayout({
    super.key,
    required this.pageClick,
  });

  final AppBottonBarCallback pageClick;

  @override
  State<BottonBarDesktopLayout> createState() => _BottonBarDesktopLayoutState();
}

class _BottonBarDesktopLayoutState extends State<BottonBarDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFF1D1B16) : const Color(0xFFFFFBFF),
      height: 50,
      child: Column(children: [
        Container(
          height: 49,
          padding: const EdgeInsets.only(left: 50.0, right: 50),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Farioso', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  AppMenuDesktopItem(
                    text: 'Home',
                    active: (AppInstances.instance.globalStore.currentPage == 0),
                    action: () {
                      // widget.pageClick(0);
                      AppAlerts.warnig(context);
                    },
                  ),
                  // const SizedBox(width: 8.0),
                  AppMenuDesktopItem(
                    text: 'Sobre',
                    active: (AppInstances.instance.globalStore.currentPage == 1),
                    action: () {
                      // widget.pageClick(1);
                      AppAlerts.warnig(context);
                    },
                  ),

                  AppMenuDesktopItem(
                    text: 'Skills',
                    active: (AppInstances.instance.globalStore.currentPage == 2),
                    action: () {
                      // widget.pageClick(2);
                      AppAlerts.warnig(context);
                    },
                  ),
                  AppMenuDesktopItem(
                    active: (AppInstances.instance.globalStore.currentPage == 3),
                    text: 'Serviços',
                    action: () {
                      // widget.pageClick(3);
                      AppAlerts.warnig(context);
                    },
                  ),
                  AppMenuDesktopItem(
                    active: (AppInstances.instance.globalStore.currentPage == 4),
                    text: 'Portfolio',
                    action: () {
                      // widget.pageClick(4);
                      AppAlerts.warnig(context);
                    },
                  ),
                  AppMenuDesktopItem(
                    active: (AppInstances.instance.globalStore.currentPage == 5),
                    text: 'Contato',
                    action: () {
                      // widget.pageClick(5);
                      AppAlerts.warnig(context);
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        AppInstances.instance.globalStore.changeActualTheme();
                      });
                    },
                    icon: Icon(AppInstances.instance.globalStore.darkModeActivated ? Icons.light_mode_rounded : Icons.dark_mode_outlined),
                  ),
                ]),
              ],
            ),
          ]),
        ),
        Divider(color: Colors.grey.withOpacity(.4), height: .25),
      ]),
    );
  }
}

class BottonBarPhoneLayout extends StatefulWidget {
  const BottonBarPhoneLayout({
    super.key,
    required this.pageClick,
  });

  final AppBottonBarCallback pageClick;

  @override
  State<BottonBarPhoneLayout> createState() => _BottonBarPhoneLayoutState();
}

class _BottonBarPhoneLayoutState extends State<BottonBarPhoneLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFF1D1B16) : const Color(0xFFFFFBFF),
      height: 50,
      child: Column(children: [
        Divider(color: Colors.grey.withOpacity(.4), height: .25),
        Container(
          height: 49,
          padding: const EdgeInsets.only(left: 22.0, right: 8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Farioso', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              width: 85.5,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        AppInstances.instance.globalStore.changeActualTheme();
                      });
                    },
                    icon: Icon(AppInstances.instance.globalStore.darkModeActivated ? Icons.light_mode_rounded : Icons.dark_mode_outlined),
                  ),
                  // const SizedBox(width: 8.0),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 200,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 55.0, right: 55.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          AppMenuItem(
                                            text: 'Home',
                                            icon: const Icon(Icons.home_rounded),
                                            action: () {
                                              widget.pageClick(0);
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          // const SizedBox(width: 8.0),
                                          AppMenuItem(
                                            text: 'Sobre',
                                            icon: const Icon(Icons.account_circle_rounded),
                                            action: () {
                                              widget.pageClick(1);
                                              Navigator.of(context).pop();
                                            },
                                          ),

                                          AppMenuItem(
                                            text: 'Skills',
                                            icon: const Icon(Icons.receipt_long_rounded),
                                            action: () {
                                              widget.pageClick(2);
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 22.0),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                        AppMenuItem(
                                          text: 'Serviços',
                                          icon: const Icon(Icons.design_services_rounded),
                                          action: () {
                                            widget.pageClick(3);
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        AppMenuItem(
                                          text: 'Portfolio',
                                          icon: const Icon(Icons.landscape_rounded),
                                          action: () {
                                            widget.pageClick(4);
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        AppMenuItem(
                                          text: 'Contato',
                                          icon: const Icon(Icons.send_rounded),
                                          action: () {
                                            widget.pageClick(5);
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.grid_view)),
                ],
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
