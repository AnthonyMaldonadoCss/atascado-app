import 'package:flutter/material.dart';
import 'package:atascados/routes/main.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const AtascadoApp());

class AtascadoApp extends StatelessWidget {
  const AtascadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
    );

    return MaterialApp.router(
      routerConfig: AppRouter().router,
    );
  }
}
