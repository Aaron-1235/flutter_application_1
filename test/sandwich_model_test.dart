import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/models/sandwich.dart';

void main() {
  group('Sandwich model tests', () {
    test('creates Sandwich instance with given properties', () {
      const sandwich = Sandwich(
        id: 'veggie',
        name: 'Veggie Sub',
        description: 'Loaded with fresh vegetables.',
        price: 5.25,
        imagepath: 'assets/images/six_inch.jpeg',
      );

      expect(sandwich.id, 'veggie');
      expect(sandwich.name, 'Veggie Sub');
      expect(sandwich.description, 'Loaded with fresh vegetables.');
      expect(sandwich.price, 5.25);
      expect(sandwich.imagepath, 'assets/images/six_inch.jpeg');
    });
    test(
      'formattedPrice returns price prefixed with pound sign and two decimals',
      () {
        const sandwich = Sandwich(
          id: 'footlong',
          name: 'Footlong sub',
          description: 'test desciption',
          price: 7.5,
          imagepath: 'assets/images/six_inch.jpeg',
        );
        expect(sandwich.formattedPrice, '£7.50');
      },
    );
  });
}
