import 'Hewan.dart';

class Meong extends Hewan {
  String warnaBulu;

  Meong(String nama, int umur, double berat, String warnaBulu)
      : warnaBulu = warnaBulu,
        super(nama, umur, berat);


  @override
    void makan() {
      print('$nama sedang makan ikan.');
      berat += 0.2;
  }

  void tidur() {
    print('$nama sedang tidur.');
  }  
}
