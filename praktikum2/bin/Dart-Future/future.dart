import 'dart:async';

Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Matcha Latte';
  });
}

void main() {
  print('Getting your product...');

  getProduct().then((value) {
    print('Your product: $value');
  });
}
