class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(title: 'Кем хочешь стать', answers: [
      {'answer': 'Ведущим'},
      {'answer': 'Врачом'},
      {'answer': 'Пародистом'},
      {'answer': 'Мастером', 'isCorrect': 1},
    ]),
    Question(title: 'Кто ты', answers: [
      {'answer': 'Никто'},
      {'answer': 'Герой', 'isCorrect': 1},
      {'answer': 'Альпинист'},
      {'answer': 'Провокатор'},
    ]),
    Question(title: 'Что видишь?', answers: [
      {'answer': 'Текст'},
      {'answer': 'Буквы', 'isCorrect': 1},
      {'answer': 'Окно'},
      {'answer': 'Тупость'},
    ]),
    Question(title: 'Что сделаешь?', answers: [
      {'answer': 'Сяду'},
      {'answer': 'Встану'},
      {'answer': 'Проснусь'},
      {'answer': 'Найду работу', 'isCorrect': 1},
    ]),
    Question(title: 'Откуда ты', answers: [
      {'answer': 'Дом'},
      {'answer': 'Улица'},
      {'answer': 'Роддом'},
      {'answer': 'Не скажу', 'isCorrect': 1},
    ]),
  ];

  List<Question> get questions => [..._data];
}
