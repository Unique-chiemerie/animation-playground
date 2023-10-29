import 'package:flutter/material.dart';

class JigglyButton extends StatefulWidget {
  const JigglyButton({super.key});

  @override
  _JigglyButtonState createState() => _JigglyButtonState();
}

class _JigglyButtonState extends State<JigglyButton>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _animation = Tween(begin: -0.05, end: 0.05).animate(_controller!);
    _animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller!.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _controller!,
        builder: (context, child) {
          return Transform.rotate(
            angle: _animation!.value,
            child: Container(
              width: 100.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  'Jiggly',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
