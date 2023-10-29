import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Squishybutton extends StatefulWidget {
  const Squishybutton({super.key});

  @override
  State<Squishybutton> createState() => _SquishybuttonState();
}

class _SquishybuttonState extends State<Squishybutton> {
  bool ispressed = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        setState(() {
          ispressed = true;
        });
      },
      onTapDown: (details) {
        setState(() {
          ispressed = false;
        });
      },
      child: AnimatedContainer(
        width: ispressed ? 70 : 50,
        height: 70,
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(ispressed ? 20 : 50),
        ),
        child: Center(
          child: Text(
            'Squish me',
            style: GoogleFonts.josefinSans(
                color: Colors.white, fontSize: ispressed ? 15 : 10),
          ),
        ),
      ),
    );
  }
}
