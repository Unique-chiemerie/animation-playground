import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Bookmarkbutton extends StatefulWidget {
  const Bookmarkbutton({super.key});

  @override
  State<Bookmarkbutton> createState() => _BookmarkbuttonState();
}

class _BookmarkbuttonState extends State<Bookmarkbutton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animcntrl;
  @override
  void initState() {
    super.initState();
    _animcntrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animcntrl.dispose();
  }

  bool isbookmarked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isbookmarked == false) {
          isbookmarked = true;
          _animcntrl.forward();
        } else {
          isbookmarked = false;
          _animcntrl.reverse();
        }
      },
      child: SizedBox(
        height: 100,
        width: 200,
        child: Lottie.asset('assets/bookmark.json', controller: _animcntrl),
      ),
    );
  }
}
