import 'dart:async';

Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    var isProductAvailable = true; // Ubah ke true agar tidak terjadi error
    if (isProductAvailable) {
      return 'Matcha Latte';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

Future<void> main() async {
  print('Getting your product...');

  try {
    var order = await getProduct();
    print('Your order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }
}
