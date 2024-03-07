class Animal {
  String nama; 
  int umur; 
  double berat;
  
  Animal(this.nama, this.umur, this.berat);

  void makan() {
    print('$nama makan.'); 
    berat = berat + 0.2;
  }

  void tidur() { 
    print('$nama sedang tidur');
  }
  void main() {
  var kucing = Animal('Ketty', 2, 3.2);
  kucing.makan(); 
  kucing.tidur(); 
  print(kucing.berat);}
}
