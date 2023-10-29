import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Final extends StatefulWidget {
  const Final({super.key});

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Did you see the beautiful animation',
          style: GoogleFonts.luckiestGuy(fontSize: 20, color: Colors.green),
        ),
      ),
    );
  }
}
