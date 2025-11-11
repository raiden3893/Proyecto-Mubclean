import 'package:flutter/material.dart';
import 'package:mubclean/src/config/app_colors.dart';
import 'package:mubclean/src/features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MubClean App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Puedes definir tu tema de colores base aquí si lo necesitas
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
        //   secondary: AppColors.primary, // Ejemplo para el color de acento
        // ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Configuración para el modo oscuro
        scaffoldBackgroundColor: AppColors.backgroundDark,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundDark,
        ),
        // Más configuraciones de tema oscuro aquí
      ),
      themeMode: ThemeMode.system, // O ThemeMode.light si solo quieres light
      home: const HomePage(), // Aquí es donde se llama a tu HomePage
    );
  }
}
