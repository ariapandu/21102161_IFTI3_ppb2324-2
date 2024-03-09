// 1. Pure functions
int sum(int angka1, int angka2) {
  return angka1 + angka2;
}

// 2. Recursion
int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

// 3. Immutable variables
void main() {
  final int angka1 = 5; // Variabel angka1 bersifat immutable
  final int angka2 = 3; // Variabel angka2 bersifat immutable
  
  print('Hasil penjumlahan: ${sum(angka1, angka2)}');
  
  // 4. Functions are first-class citizen and can be higher-order
  Function fungsiPertama = (int x) => x * x; // Menggunakan fungsi sebagai variabel
  Function fungsiKedua = (Function f, int x) => f(x); // Fungsi yang menerima fungsi lain sebagai argumen
  
  print('Hasil fungsi pertama: ${fungsiPertama(5)}');
  print('Hasil fungsi kedua: ${fungsiKedua(fungsiPertama, 5)}');
}
