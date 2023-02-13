import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../app_instances.dart';

class AppSkillTile extends StatefulWidget {
  final String tech, description;
  final Icon icon;
  final List<AppSkillItem> items;

  const AppSkillTile({
    super.key,
    required this.tech,
    required this.description,
    required this.icon,
    required this.items,
  });

  @override
  State<AppSkillTile> createState() => _AppSkillTileState();
}

class _AppSkillTileState extends State<AppSkillTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 22.0),
      child: Observer(builder: (_) {
        return ExpandablePanel(
          theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToCollapse: true,
            iconColor: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFFFFBFF) : const Color(0xFF1D1B16),
          ),
          header: Row(
            children: [
              widget.icon,
              Text(
                '  ${widget.tech}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          collapsed: Text(
            widget.description,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.items,
          ),
        );
      }),
    );
  }
}

class AppSkillItem extends StatelessWidget {
  final String skill, percentageInString;
  final double percentage;

  const AppSkillItem({
    super.key,
    required this.skill,
    this.percentage = 0,
    this.percentageInString = '0.0',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 35, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Text(
                '$percentageInString%',
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(value: percentage),
        ],
      ),
    );
  }
}
