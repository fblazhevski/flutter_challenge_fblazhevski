String formatPopulation(int population) {
  final s = population.toString();
  final buffer = StringBuffer();
  for (int i = 0; i < s.length; i++) {
    final indexFromEnd = s.length - i;
    buffer.write(s[i]);
    if (indexFromEnd > 1 && indexFromEnd % 3 == 1) {
      buffer.write(',');
    }
  }
  return buffer.toString();
}
