abstract class Hewan {}

abstract class Mammal extends Hewan {}

mixin Flyable {}

mixin Walkable {
  void walk() {
    print('Walking...');
  }
}

class Meong extends Mammal with Walkable {}

void main() {
  // 1. DO name type using UpperCamelCase
  // ignore: unused_local_variable
  var mInstance; // Bad

  // 2. DO use ?? to convert null to a boolean value
  var partnership;
  if (partnership?.isPartnership ?? false) {
    print('Sudah bekerja sama');
  }

  // 4. AVOID using curly braces in interpolation when not needed
  String nama = 'John';
  int thisYear = 2024;
  int birthYear = 1990;
  print('Hallo, $nama, berumur ${thisYear - birthYear} tahun.');

  // 5. CONSIDER making the code read like a sentence
  bool loginSuccess = true;
  if (loginSuccess) {
    print('If login is success ...');
  }

  // "Hallo! Selamat datang kembali"
  Meong().walk();
}
