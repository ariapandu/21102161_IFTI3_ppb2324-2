void main() {
  var buah = ['Mangga', 'Apel', 'Jeruk', 'Manggis'];
  var hewan = ['Ayam', 'Kelinci', 'Kucing'];
  var allFavorites = [buah, hewan];
  print(allFavorites);
}

/* output[[Mangga, Apel, Jeruk, Manggis], [Ayam, Kelinci, Kucing]] */

//Contoh dengan spread operator://
// void main(){
// var buah = ['Mangga', 'Apel', 'Jeruk', 'Manggis'];
// var hewan = ['Ayam', 'Kelinci', 'Kucing'];
// var allFavorites = [...buah, ...hewan];
// print(allFavorites);
// }
// /* output [Mangga, Apel, Jeruk, Manggis, Ayam, Kelinci, Kucing] */