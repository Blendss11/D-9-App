import 'package:d9/features/autentication/screens/onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Replace with the actual import path

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });

    return OverflowBox(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(181, 65, 53, 1),
        body: Column(
          children: [
            Transform.translate(
              offset: const Offset(-70, -103),
              child: Container(
                width: 430,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(197, 76, 65, 1),
                  borderRadius: BorderRadius.circular(500),
                ),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Center(
              child: Image.asset(
                'assets/logo/Logo.png',
                width: 113,
                height: 113,
              ),
            ),
            Transform.translate(
              offset: Offset(350, 330),
              child: CustomPaint(
                painter: Kotak(),
                size: const Size(265, 268),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Kotak extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color.fromRGBO(156, 50, 41, 100);
    final path = Path();

    path.moveTo(10, size.height * -1.2);
    path.lineTo(size.width * -1.3, 50);
    path.lineTo(10, 50);
    path.lineTo(10, size.height * 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
