import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/home/components/drawer_bar.dart';
import 'package:flutter_porfolio/screens/home/components/project_body/project_body.dart';
import 'components/components.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void toggle() {
    animationController.isDismissed ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final maxSlide = 20;
    List<String> navHeaders = ["Projects", "Skills", "Message Me", "Social Media"];
    return Scaffold(
      floatingActionButton: ThemeActionButton(),
      body:Stack(
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DrawerBar(),
                      CircleAvatar(backgroundImage: AssetImage(
                          "assets/images/pfp.png"), radius: 70),
                      NameHeader(),
                      ProfileDescription(),
                      ProjectBody()
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: toggle,
                child: AnimatedBuilder(
                  animation: animationController,
                  builder: (context, _) {
                    double slide = maxSlide * animationController.value;
                    return Transform(
                      transform: Matrix4.identity()..translate(slide),
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.black54)),
                          Container(
                            color: theme.scaffoldBackgroundColor.withAlpha(255),
                            width: size.width * (4 / 7),
                            child: ListView.builder(itemCount: navHeaders.length,
                                itemBuilder: (context, index) {
                                  return InkWell(splashColor: theme.accentColor,
                                      child: Container(height: 30,
                                        width: double.infinity,
                                        child: Text(navHeaders[index]),));
                                }),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              )
            ],
      ),
    );
  }
}

