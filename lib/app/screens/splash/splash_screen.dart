import 'package:appcliente/app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 3 segunoos para pasar al login
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: Stack(
          children: [
            // Circulo superior derecho
            Positioned(
              top: -size.width * 0.2,
              right: -size.width * 0.2,
              child: Container(
                width: size.width * 0.5,
                height: size.width * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0xFF5FAAD9),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Círculo inferior izquierdo
            Positioned(
              bottom: -size.width * 0.3,
              left: -size.width * 0.3,
              child: Container(
                width: size.width * 0.7,
                height: size.width * 0.7,
                decoration: const BoxDecoration(
                  color: Color(0xFF5FAAD9),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Contenido central (logo + texto)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/farmaprisa.png',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
