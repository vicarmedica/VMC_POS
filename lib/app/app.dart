import 'package:appcliente/app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    //definir color primario
    const primary = Color(0xFF4A6AD3);
    const textColor = Color(0xFF4A4A4A);
    const backgroundcolor = Color(0xFFF5F5F5);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundcolor,
        textTheme: Theme.of(context).textTheme.apply(
           fontFamily: 'Poppins',
          bodyColor: textColor,
          displayColor: textColor,

        )
      ),
      routes:
      {
        'splash':(_) => SplashScreen(),
      },
      //Inicializar mis routes
      initialRoute: 'splash',
    );
  }
}




