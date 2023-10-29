import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play/buttons/jelly_button.dart';
import 'package:play/buttons/squish.dart';
import 'package:play/screens/cntrl_animations.dart';

class Jellybutton extends StatefulWidget {
  const Jellybutton({super.key});

  @override
  State<Jellybutton> createState() => _JellybuttonState();
}

class _JellybuttonState extends State<Jellybutton> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Button animations',
              style: GoogleFonts.luckiestGuy(color: Colors.black, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //list view for all buttons
            children: [
              //squishy button
              Squishybutton(),
              SizedBox(
                height: 50,
              ),
              //jiggly button
              JigglyButton(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Controllerscrns(),
              ));
        },
        child: const Text('Next'),
      ),
    );
  }
}
