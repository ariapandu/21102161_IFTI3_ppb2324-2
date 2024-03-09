class Hewan {
  String nama;
  int umur;
  double berat;

  // Konstruktor
  Hewan(this.nama, this.umur, this.berat);

  // Metode jalan
  void jalan() {
    print('$nama berjalan.');
  }

  void makan() {
    print('$nama makan.');
    berat = berat + 0.2;
  }
}
