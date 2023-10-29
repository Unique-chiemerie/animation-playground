import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:play/screens/final.dart';

class Loadscreen extends StatefulWidget {
  const Loadscreen({super.key});

  @override
  State<Loadscreen> createState() => _LoadscreenState();
}

class _LoadscreenState extends State<Loadscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 7),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const Final(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1, 0);
              const end = Offset.zero;
              var tween = Tween(begin: begin, end: end).chain(
                CurveTween(curve: Curves.bounceIn),
              );
              var offsetanim = animation.drive(tween);
              return SlideTransition(
                position: offsetanim,
                child: child,
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Center(
        child: Lottie.asset('assets/loading.json', height: 80, width: 80),
      ),
    );
  }
}
