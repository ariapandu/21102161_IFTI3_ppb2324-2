void main() {
  List<int> numberList = [1, 2, 3, 4, 5];
  List<dynamic> dynamicList = [1, 'Informatika', true];

  // Mencetak elemen-elemen dari numberList
  print('Elemen dalam numberList:');
  for (int number in numberList) {
    print(number);
  }

  // Mencetak elemen-elemen dari dynamicList
  print('\nElemen dalam dynamicList:');
  for (var element in dynamicList) {
    print(element);
  }
}
