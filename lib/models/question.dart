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
    Question(title: 'Что на самом деле представляет из себя легендарный зеленый код из «Матрицы»?', answers: [
      {'answer': 'Рецепт салата'},
      {'answer': 'Рецепт пиццы'},
      {'answer': 'Рецепт крабсбургера'},
      {'answer': 'Рецепт суши', 'isCorrect': 1},
    ]),
    Question(title: 'Где снимали трилогию «Властелин колец»', answers: [
      {'answer': 'В Греции'},
      {'answer': 'В Новой Зеландии', 'isCorrect': 1},
      {'answer': 'В Ирландии'},
      {'answer': 'В Гренландии'},
    ]),
    Question(title: 'Какого цвета полосатый свитер Фредди Крюгера?', answers: [
      {'answer': 'Красно-белого
      {'answer': 'Красно-зеленого', 'isCorrect': 1},
      {'answer': 'Сине-зеленого'},
      {'answer': 'Красно-чёрного'},
    ]),
    Question(title: 'Какой предмет есть в каждой сцене «Бойцовского клуба»?', answers: [
      {'answer': 'Бутылка Pepsi'},
      {'answer': 'Пиво Guiness'},
      {'answer': 'Сигареты Marlboro'},
      {'answer': 'Стаканчик Starbucks', 'isCorrect': 1},
    ]),
    Question(title: 'Какой актер не играл Джокера?', answers: [
      {'answer': 'Джек Николсон'},
      {'answer': 'Марк Хэмилл'},
      {'answer': 'Джаред Лето'},
      {'answer': 'Леонардо Ди Каприо', 'isCorrect': 1},
    ]),
    Question(title: 'В какой картине не снималась Эмма Стоун?', answers: [
      {'answer': '«SuperПерцы»'},
      {'answer': '«Отличница легкого поведения»'},
      {'answer': '«Прислуга»'},
      {'answer': '«Больше чем секс»', 'isCorrect': 1},
    ]),
    Question(title: 'Какие персонажи из «Звездных войн» появляются в «Индиане Джонсе»?', answers: [
      {'answer': 'Дарт Вейдер и Дарт Мол'},
      {'answer': 'Йода и Оби-Ван Кеноби'},
      {'answer': 'Люк Скайуокер и принцесса Лея'},
      {'answer': 'R2-D2 и C-3PO', 'isCorrect': 1},
    ]),
    Question(title: 'Кто сыграл Венди Торренс в «Сиянии»?', answers: [
      {'answer': 'Эми Понд'},
      {'answer': 'Шелли Дюваль', 'isCorrect': 1},
      {'answer': 'Аманда Сайфред'},
      {'answer': 'Линда Ронстадт'},
    ]),
    Question(title: 'Какое слово завершает цитату из «Апокалипсиса сегодня»: «Я люблю запах ___ поутру»?', answers: [
      {'answer': 'Свободы'},
      {'answer': 'Перегара'},
      {'answer': 'Победы'},
      {'answer': 'Напалма', 'isCorrect': 1},
    ]),
    Question(title: 'Какой фильм — самый кассовый в истории кино?', answers: [
      {'answer': '«Аватар»', 'isCorrect': 1},
      {'answer': '«Мстители: Финал»'},
      {'answer': '«Титаник»'},
      {'answer': '«Джокер»'},
    ]),
  ];

  List<Question> get questions => [..._data];
}
