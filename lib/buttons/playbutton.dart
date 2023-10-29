import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Playbutton extends StatefulWidget {
  const Playbutton({super.key});

  @override
  State<Playbutton> createState() => _PlaybuttonState();
}

class _PlaybuttonState extends State<Playbutton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animcont;
  @override
  void initState() {
    super.initState();
    _animcont = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animcont.dispose();
  }

  bool isplayed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isplayed == false) {
          isplayed = true;
          _animcont.forward();
        } else {
          isplayed = false;
          _animcont.reverse();
        }
      },
      child: SizedBox(
        height: 70,
        width: 100,
        child: Lottie.asset('assets/play.json', controller: _animcont),
      ),
    );
  }
}
