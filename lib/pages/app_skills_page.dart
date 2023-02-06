import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../app_instances.dart';
import '../widgets/app_skill_tile.dart';

class AppSkillsPage extends StatefulWidget {
  const AppSkillsPage({
    super.key,
    required Size mediaSize,
  }) : _mediaSize = mediaSize;

  final Size _mediaSize;

  @override
  State<AppSkillsPage> createState() => _AppSkillsPageState();
}

class _AppSkillsPageState extends State<AppSkillsPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 22, right: 22, bottom: 60.0, top: widget._mediaSize.height * .15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Skills',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 1.5),
              Text('My Technical Level', style: TextStyle(fontSize: 12.5)),
              SizedBox(height: 50.0),
              AppSkillTile(
                tech: 'Frontend developer',
                description: 'More then 4 years',
                icon: Icon(Icons.data_object),
                items: [
                  AppSkillItem(
                    skill: 'HTML',
                    percentage: 0.9,
                    percentageInString: '90',
                  ),
                  AppSkillItem(
                    skill: 'CSS',
                    percentage: 0.8,
                    percentageInString: '80',
                  ),
                  AppSkillItem(
                    skill: 'JavaScript',
                    percentage: 0.6,
                    percentageInString: '60',
                  ),
                  AppSkillItem(
                    skill: 'React',
                    percentage: 0.85,
                    percentageInString: '85',
                  ),
                ],
              ),
              AppSkillTile(
                tech: 'Backend developer',
                description: 'More then 2 years',
                icon: Icon(Icons.terminal_rounded),
                items: [
                  AppSkillItem(
                    skill: 'PHP',
                    percentage: 0.8,
                    percentageInString: '80',
                  ),
                  AppSkillItem(
                    skill: 'Node Js',
                    percentage: 0.7,
                    percentageInString: '70',
                  ),
                  AppSkillItem(
                    skill: 'Firebase',
                    percentage: 0.90,
                    percentageInString: '90',
                  ),
                  AppSkillItem(
                    skill: 'Python',
                    percentage: 0.55,
                    percentageInString: '55',
                  ),
                ],
              ),
              AppSkillTile(
                tech: 'Designer',
                description: 'More then 2 years',
                icon: Icon(Icons.design_services_rounded),
                items: [
                  AppSkillItem(
                    skill: 'Figma',
                    percentage: 0.9,
                    percentageInString: '90',
                  ),
                  AppSkillItem(
                    skill: 'Sketch',
                    percentage: 0.85,
                    percentageInString: '85',
                  ),
                  AppSkillItem(
                    skill: 'Photoshop',
                    percentage: 0.85,
                    percentageInString: '85',
                  )
                ],
              ),
              SizedBox(height: 22.0),
              Text('Qualification',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 1.5),
              Text('My personal journey', style: TextStyle(fontSize: 12.5)),
              SizedBox(height: 22.0),
              WorkTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkTile extends StatelessWidget {
  const WorkTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double uniformeSize = 100.0;
    return Observer(builder: (_) {
      return Column(children: [
        const Icon(Icons.business_center),
        const SizedBox(width: 5.0),
        const Text('Work'),
        const SizedBox(height: 22),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: uniformeSize,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Software\nEngineer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Microsoft - Peru',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2016 - 2018',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: uniformeSize + 25,
              ),
              SizedBox(
                height: uniformeSize,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'UI\nDesigner',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Figma - Spain',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2016 - 2018',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
            child: Column(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: uniformeSize,
                  width: 1.5,
                  color: Colors.grey,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: uniformeSize,
                  width: 1.5,
                  color: Colors.grey,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: AppInstances.instance.globalStore.darkModeActivated ? const Color(0xFFE1C648) : const Color(0xFF6E5D00),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: uniformeSize,
              ),
              SizedBox(
                height: uniformeSize,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Frontend\nDeveloper',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Microsoft - Peru',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2016 - 2018',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      ]);
    });
  }
}
