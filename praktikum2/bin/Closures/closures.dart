void main() {
  var contohClosure = penjumlahan(2);
  contohClosure();
  contohClosure();
}

Function penjumlahan(int base) {
  var a = 1;
  return () {
    print("Nilainya adalah ${base + a++}");
  };
}
