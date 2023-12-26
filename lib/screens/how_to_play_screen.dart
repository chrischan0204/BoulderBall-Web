import 'package:boulderball/screens/how-to-play/basics_screen.dart';
import 'package:boulderball/screens/how-to-play/free_climbing_screen.dart';
import 'package:boulderball/screens/how-to-play/special_moves_screen.dart';
import 'package:boulderball/widgets/bb_scaffold.dart';
import 'package:flutter/material.dart';
import '../widgets/icon_button.dart';

class HowToPlayScreen extends StatefulWidget {
  const HowToPlayScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HowToPlayScreenState();
}

class _HowToPlayScreenState extends State<HowToPlayScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double buttonWidth = width * 0.75;
    double buttonGap = 8;
    return BBScaffold(
      title: const Text("How To Play"),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(40),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BBIconButton(
              icon: const Icon(Icons.question_mark_rounded, color: Colors.white),
              label: const Text("Basics", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const BasicsScreen();
                }));
              },
            ),
            Padding(padding: EdgeInsets.all(buttonGap)),
            BBIconButton(
              icon: const Icon(Icons.star_outline_rounded, color: Colors.white),
              label: const Text("Special Moves", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SpecialMovesScreen();
                }));
              },
            ),
            Padding(padding: EdgeInsets.all(buttonGap)),
            BBIconButton(
              icon: const Icon(Icons.hiking_rounded, color: Colors.white),
              label: const Text("Free Climbing", style: TextStyle(color: Colors.white),),
              width: buttonWidth,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const FreeClimbingScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
