import 'package:flutter/material.dart';
import 'package:atascados/routes/main.dart';

void main() => runApp(const AtascadoApp());

class AtascadoApp extends StatelessWidget {
  const AtascadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
    );
  }
}
