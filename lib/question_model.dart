class Question {
  final String text;
  final List<Option> options;
  bool isLocked;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(text: "Where is the cat?", options: [
    const Option(text: 'on floor', isCorrect: false),
    const Option(text: 'in kitchen', isCorrect: false),
    const Option(text: 'on cabinet', isCorrect: true),
    const Option(text: 'on balcony', isCorrect: false),
  ]),
  Question(text: "Where is the dog?", options: [
    const Option(text: 'on floor', isCorrect: false),
    const Option(text: 'in kitchen', isCorrect: false),
    const Option(text: 'on cabinet', isCorrect: true),
    const Option(text: 'on balcony', isCorrect: false),
  ]),
  Question(text: "Where is the pig?", options: [
    const Option(text: 'on floor', isCorrect: false),
    const Option(text: 'in kitchen', isCorrect: false),
    const Option(text: 'on cabinet', isCorrect: true),
    const Option(text: 'on balcony', isCorrect: false),
  ]),
];
