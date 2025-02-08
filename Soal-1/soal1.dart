import 'dart:io';

List<int> generateA000124(int n) {
  List<int> result = [];
  for (int i = 1; i <= n; i++) {
    int formula = i * (i + 1) ~/ 2;
    result.add(formula);
  }
  return result;
}

void main() {
  print("Masukkan angka: ");

  String? inputString = stdin.readLineSync();

  if (inputString != null && int.tryParse(inputString) != null) {
    int input = int.parse(inputString);

    List<int> result = generateA000124(input);

    print(result.join('-'));
  } else {
    print("Input Tidak Valid! Silakan masukan angka.");
  }
}
