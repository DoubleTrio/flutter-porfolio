import "package:flutter/material.dart";

class ProjectCard extends StatelessWidget {
  final String assetName;
  final String projectName;
  final void Function()? onPressed;
  final double height;
  final double aspectRatio;

  ProjectCard({ required this.assetName, required this.projectName, required this.onPressed, this.height = 275, this.aspectRatio = 1.5/1.7});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Color> imageGradientColors = [Colors.black.withAlpha(200), Colors.transparent];
    return Stack(
      children: [
        Container(
          height: height,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetName),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Text(projectName, style: theme.textTheme.caption),
          ),
        ),
        Container(
          height: height,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: imageGradientColors,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: AspectRatio(
            aspectRatio: aspectRatio,
          ),
        ),
      ],
    );
  }
}
