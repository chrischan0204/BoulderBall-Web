import 'package:boulderball/screens/assembly_screen.dart';
import 'package:boulderball/screens/bundle_list_screen.dart';
import 'package:boulderball/screens/how_to_play_screen.dart';
import 'package:boulderball/screens/workout_screen.dart';
import 'package:boulderball/utils/route_manager.dart';
import 'package:boulderball/widgets/bb_scaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    RouteManager.instance.init();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double buttonWidth = width * 0.75;
    double buttonGap = 8;

    return BBScaffold(
      navDrawer: true,
      title: const Text("Home"),
      body: Container(
        margin: const EdgeInsets.all(20),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BBIconButton(
              icon: const Icon(Icons.menu_book, color: Colors.white),
              label: const Text("Construction Manual", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const AssemblyScreen();
                }));
              },
            ),
            Padding(padding: EdgeInsets.all(buttonGap)),
            BBIconButton(
              icon: const Icon(Icons.question_mark_rounded, color: Colors.white),
              label: const Text("How To Play", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const HowToPlayScreen();
                }));
              },
            ),
            Padding(padding: EdgeInsets.all(buttonGap)),
            BBIconButton(
              icon: const Icon(Icons.local_fire_department_rounded, color: Colors.white),
              label: const Text("Warm Up & Workout", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const WorkoutScreen();
                }));
              },
            ),
            Padding(padding: EdgeInsets.all(buttonGap)),
            BBIconButton(
              icon: const Icon(Icons.view_agenda, color: Colors.white),
              label: const Text("Routes", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const BundlesScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
