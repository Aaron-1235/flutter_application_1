import 'package:flutter_application_1/models/sandwich.dart';

class SandwichRepository {
  List<Sandwich> getSandwiches() {
    return const [
      Sandwich(
        id: 'footlong', 
        name: 'Footlong Sub', 
        description: 'A freshly baked 12 inch sandwich filled with savoury ingredients.', 
        price: 7.50, 
        imagepath: 'assets/images/footlong.jpeg',
        ),
        Sandwich(
          id: 'six-inch', 
          name: 'Six-Inch sub', 
          description: 'A light 6-inch sandwich made with your favourite toppings.', 
          price: 4.50, 
          imagepath: 'assets/images/six_inch.jpeg',
          ),
    ];
  }
}