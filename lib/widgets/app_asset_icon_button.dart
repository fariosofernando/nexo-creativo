import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_instances.dart';

class AssetIconButton extends StatefulWidget {
  final String lightAsset, darkAsset;
  final Function touch;
  const AssetIconButton({
    super.key,
    required this.lightAsset,
    required this.darkAsset,
    required this.touch,
  });

  @override
  State<AssetIconButton> createState() => _AssetIconButtonState();
}

class _AssetIconButtonState extends State<AssetIconButton> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return GestureDetector(
          onTap: () => widget.touch(),
          child: AppInstances.instance.globalStore.darkModeActivated
              ? SvgPicture.asset(
                  widget.darkAsset,
                  semanticsLabel: 'git-hub-colored-icon',
                  height: 28,
                  fit: BoxFit.cover,
                )
              : SvgPicture.asset(
                  widget.lightAsset,
                  semanticsLabel: 'git-hub-icon',
                  height: 28,
                  fit: BoxFit.cover,
                ),
        );
      },
    );
  }
}
