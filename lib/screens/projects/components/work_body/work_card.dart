import "package:flutter/material.dart";

class ProjectCard extends StatelessWidget {
  final String assetName;
  final String projectName;
  final VoidCallback onPressed;
  final double height;
  final double aspectRatio;

  ProjectCard({ required Key key, required this.assetName, required this.projectName, required this.onPressed, this.height = 275, this.aspectRatio = 1.5/1.7});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Color> imageGradientColors = [Colors.black.withAlpha(200), Colors.transparent];
    return Hero(
      tag: assetName,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            InkWell(
              onTap: onPressed,
              child: Container(
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
        ),
      ),
    );
  }
}
