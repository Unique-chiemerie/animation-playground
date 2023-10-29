import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:play/buttons/bookmark.dart';
import 'package:play/buttons/like.dart';
import 'package:play/buttons/nextbutton.dart';
import 'package:play/buttons/playbutton.dart';

class Controllerscrns extends StatelessWidget {
  const Controllerscrns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Animations with controllers',
              style: GoogleFonts.luckiestGuy(color: Colors.black, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Bookmarkbutton(),
          const SizedBox(
            height: 50,
          ),
          const Playbutton(),
          const SizedBox(
            height: 50,
          ),
          const Likebutton(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: const Nextbutton(),
      ),
    );
  }
}
