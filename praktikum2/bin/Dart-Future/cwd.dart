import 'dart:async';

// Future yang mengembalikan data setelah 3 detik
Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Matcha Latte';
  });
}

void main() {
  print('Getting your product...');

  // Menggunakan .then() untuk menangani hasil future
  getProduct().then((value) {
    print('Your product: $value');
  });
}
