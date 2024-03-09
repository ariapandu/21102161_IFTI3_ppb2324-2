import 'dart:async';

// Future yang mengembalikan data setelah 3 detik, atau melempar error jika stok tidak mencukupi
Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    var isProductAvailable = false;
    if (isProductAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

void main() {
  print('Getting your product...');

  // Menggunakan .then() untuk menangani hasil future
  getProduct().then((value) {
    print('Your product: $value');
  })
  // Menggunakan .catchError() untuk menangani error yang terjadi dalam future
  .catchError((error) {
    print('Sorry. $error');
  });
}
