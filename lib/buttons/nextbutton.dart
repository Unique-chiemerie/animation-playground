import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:play/screens/loadscreen.dart';

class Nextbutton extends StatefulWidget {
  const Nextbutton({super.key});

  @override
  State<Nextbutton> createState() => _NextbuttonState();
}

class _NextbuttonState extends State<Nextbutton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  bool isnext = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isnext == true) {
          isnext = false;
          _animationController.forward();
          Future.delayed(
            const Duration(seconds: 1),
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Loadscreen(),
              ),
            ),
          );
        } else {
          isnext = true;
          _animationController.reverse();
          Future.delayed(
            const Duration(seconds: 1),
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Loadscreen(),
              ),
            ),
          );
        }
      },
      child: SizedBox(
        height: 70,
        width: 70,
        child:
            Lottie.asset('assets/Next.json', controller: _animationController),
      ),
    );
  }
}
