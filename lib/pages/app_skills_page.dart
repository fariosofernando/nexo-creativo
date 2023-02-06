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
              Text('Meu nível técnico', style: TextStyle(fontSize: 12.5)),
              SizedBox(height: 50.0),
              AppSkillTile(
                tech: 'Mobile developer',
                description: 'Mais de 10 anos',
                icon: Icon(Icons.data_object),
                items: [
                  AppSkillItem(
                    skill: 'Flutter',
                    percentage: 0.95,
                    percentageInString: '95',
                  ),
                  AppSkillItem(
                    skill: 'Android',
                    percentage: 0.55,
                    percentageInString: '55',
                  ),
                  AppSkillItem(
                    skill: 'Kivy',
                    percentage: 0.96,
                    percentageInString: '96',
                  ),
                  AppSkillItem(
                    skill: 'React Native',
                    percentage: 0.25,
                    percentageInString: '25',
                  ),
                ],
              ),
              AppSkillTile(
                tech: 'Backend developer',
                description: 'Mais de 10 anos',
                icon: Icon(Icons.terminal_rounded),
                items: [
                  AppSkillItem(
                    skill: 'Kotlin',
                    percentage: 0.65,
                    percentageInString: '65',
                  ),
                  AppSkillItem(
                    skill: 'Python',
                    percentage: 0.95,
                    percentageInString: '95',
                  ),
                  AppSkillItem(
                    skill: 'Objective-C',
                    percentage: 0.55,
                    percentageInString: '55',
                  ),
                  AppSkillItem(
                    skill: 'Dart Lang',
                    percentage: 0.95,
                    percentageInString: '95',
                  ),
                  AppSkillItem(
                    skill: 'JavaScript',
                    percentage: 0.55,
                    percentageInString: '55',
                  ),
                  AppSkillItem(
                    skill: 'C++',
                    percentage: 0.55,
                    percentageInString: '55',
                  ),
                  AppSkillItem(
                    skill: 'C',
                    percentage: 0.55,
                    percentageInString: '55',
                  ),
                  AppSkillItem(
                    skill: 'Cobol',
                    percentage: 0.35,
                    percentageInString: '35',
                  ),
                  AppSkillItem(
                    skill: 'Firebase',
                    percentage: 0.60,
                    percentageInString: '60',
                  ),
                  AppSkillItem(
                    skill: 'MySQL',
                    percentage: 0.61,
                    percentageInString: '61',
                  ),
                ],
              ),
              AppSkillTile(
                tech: 'Designer',
                description: 'Mais de 6 anos',
                icon: Icon(Icons.design_services_rounded),
                items: [
                  AppSkillItem(
                    skill: 'Figma',
                    percentage: 0.15,
                    percentageInString: '15',
                  ),
                  AppSkillItem(
                    skill: 'Inkscape',
                    percentage: 0.98,
                    percentageInString: '98',
                  ),
                  AppSkillItem(
                    skill: 'Photoshop',
                    percentage: 0.55,
                    percentageInString: '55',
                  )
                ],
              ),
              SizedBox(height: 22.0),
              Text('Qualificação',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 1.5),
              Text('Minha jornada pessoal', style: TextStyle(fontSize: 12.5)),
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
        const Text('Trabalho'),
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
                      'Automation\nEngineer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'PBX - Maputo',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2023 - 2023',
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
                      'Software\nEngineer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Só Saúde - Maputo',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2021 - 2023',
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
                      'Software\nDeveloper',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Cuppen - Maputo',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2019',
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
