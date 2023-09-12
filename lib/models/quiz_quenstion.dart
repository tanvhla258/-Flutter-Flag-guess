class QuizQuenstion {
  const QuizQuenstion(this.flag, this.answers);
  final String flag;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
