import 'package:flutter/material.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'work_card.dart';

class CardScrollList extends StatelessWidget {
  final double itemHeight = 275;
  final List<ProjectInfo> projectInfoList;

  CardScrollList({ this.projectInfoList = const [] });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projectInfoList.length,
        itemBuilder: (context, index) {
          ProjectInfo projectInfo = projectInfoList[index];
          return Padding(
            padding: index == 0 ? EdgeInsets.symmetric(horizontal: 12.0) : EdgeInsets.only(right: 12),
            child: ProjectCard(
              key: Key("work_card$index"),
              assetName: projectInfo.assetName,
              projectName: projectInfo.projectName,
              height: itemHeight,
              onPressed: () {}
            ),
          );
        },
      ),
    );
  }
}
