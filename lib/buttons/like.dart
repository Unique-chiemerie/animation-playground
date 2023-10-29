import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Likebutton extends StatefulWidget {
  const Likebutton({super.key});

  @override
  State<Likebutton> createState() => _LikebuttonState();
}

class _LikebuttonState extends State<Likebutton>
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

  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isliked == true) {
          _animationController.forward();
          isliked = false;
        } else {
          _animationController.reverse();
          isliked = true;
        }
      },
      child: Lottie.asset(
        'assets/like.json',
        controller: _animationController,
        height: 80,
        width: 80,
      ),
    );
  }
}
