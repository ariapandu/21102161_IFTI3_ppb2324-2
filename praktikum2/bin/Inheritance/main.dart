import 'Meong.dart';

void main() {
  var kucing = Meong('Ketty', 2, 3.2, 'Putih');
  kucing.jalan();
  kucing.makan();
  print('Berat ${kucing.nama}: ${kucing.berat}');
}
