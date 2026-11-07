import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu_screen.dart';
import 'package:flutter_application_1/constants.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: appTitle, 
      home: const MenuScreen(),
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

//   void _increaseQuantity() {
//     if (_quantity < widget.maxQuantity) {
//       setState(() => _quantity++);
//     }
//   }

//   void _decreaseQuantity() {
//     if (_quantity > 0) {
//       setState(() => _quantity--);
//     }
//   }
// }
