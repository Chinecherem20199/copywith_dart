// extension keywoprd must be used

extension ListAverage on List<int> {
  double average() {
    var sum = 0;
    for (var item in this) {
      sum += item;
    }
    return (sum / this.length);
  }
}

extension ListSum on List<int> {
  int sum() {
    var sum = 0;
    for (var item in this) {
      sum += item;
    }
    return sum;
  }
}
