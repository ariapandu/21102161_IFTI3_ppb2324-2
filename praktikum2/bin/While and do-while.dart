void main() {
  var i = 1;
  while (i <= 100) {
    print(i);
    i++;
  }
  
  i = 1; // Kembalikan nilai i ke 1 setelah keluar dari while loop
  do {
    print(i);
    i++;
  } while (i <= 100);
}
