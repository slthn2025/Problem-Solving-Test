import 'dart:io';

List<int> denseRanking(List<int> scores, List<int> gitScores) {
  List<int> uniqueRanks = scores.toSet().toList()
    ..sort((b, a) => a.compareTo(b));

  List<int> gitRanks = [];

  for (int score in gitScores) {
    int rank = uniqueRanks.indexWhere((s) => s <= score);

    gitRanks.add(rank == -1 ? uniqueRanks.length + 1 : rank + 1);
  }
  return gitRanks;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> scores = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int m = int.parse(stdin.readLineSync()!);

  List<int> gitScores =
      stdin.readLineSync()!.split(' ').map(int.parse).toList();

  List<int> result = denseRanking(scores, gitScores);

  print(result.join(' '));
}
