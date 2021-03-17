import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/projects/components/work_body/card_scroll_list.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'work_header.dart';

class ProjectBody extends StatelessWidget {
  final List<ProjectInfo> projectInfoList = [
    ProjectInfo(
      assetName: "assets/images/building.jpg",
      projectName: "Testing",
      description: "Testing Project"
    ),
    ProjectInfo(
      assetName: "assets/images/space.jpg",
      projectName: "Space App",
      description: "Space App"
    ),
    ProjectInfo(
      assetName: "assets/images/food.jpg",
      projectName: "Restaurant App",
      description: "Restaurant App"
    )
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ProjectHeader(),
            ),
            SizedBox(height: 20),
            CardScrollList(projectInfoList: projectInfoList),
          ],
        ),
      ),
    );
  }
}
