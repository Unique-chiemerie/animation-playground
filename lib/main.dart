import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:play/screens/button_animations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      title: "Lottie app",
      debugShowCheckedModeBanner: false,
      home: Lottieapp(),
    ),
  );
}

class Lottieapp extends StatefulWidget {
  const Lottieapp({super.key});

  @override
  State<Lottieapp> createState() => _LottieappState();
}

class _LottieappState extends State<Lottieapp> {
  void movescreen() {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const Jellybutton(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1, 0);
            const end = Offset.zero;
            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: Curves.easeInOut),
            );
            var offsetanim = animation.drive(tween);
            return SlideTransition(
              position: offsetanim,
              child: child,
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Lottie Animations test',
          style: GoogleFonts.luckiestGuy(
              fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
            width: 200,
          ),
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/delivery.json'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                movescreen();
              },
              child: const Text('Next animation'),
            ),
          ),
        ],
      ),
    );
  }
}
