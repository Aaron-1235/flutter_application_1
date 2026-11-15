import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu_screen.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/basket_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: appTitle, 
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return const MenuScreen();
        },
        '/basket': (BuildContext context) {
          return const BasketScreen();
        },
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: shopBrand,
          primary: shopBrand,
        ),
        scaffoldBackgroundColor: shopBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: shopBrand,
          foregroundColor: shopWhite,
          elevation: 0,
        ),
      ),
    );
  }
}

