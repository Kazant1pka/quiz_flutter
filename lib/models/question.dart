import 'package:quiz/models/answers.dart';

class Question {
  final String title;
  final List<Answer> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
        title:
            'Что на самом деле представляет из себя легендарный зеленый код из «Матрицы»?',
        answers: [
          Answer(text: 'Рецепт салата', isCorrect: false),
          Answer(text: 'Рецепт пиццы', isCorrect: false),
          Answer(text: 'Рецепт крабсбургера', isCorrect: false),
          Answer(text: 'Рецепт суши', isCorrect: true),
        ]),
    Question(title: 'Где снимали трилогию «Властелин колец»', answers: [
      Answer(text: 'В Новой Зеландии', isCorrect: true),
      Answer(text: 'В Греции', isCorrect: false),
      Answer(text: 'В Ирландии', isCorrect: false),
      Answer(text: 'В Гренландии', isCorrect: false),
    ]),
    Question(title: 'Какого цвета полосатый свитер Фредди Крюгера?', answers: [
      Answer(text: 'Красно-белого', isCorrect: false),
      Answer(text: 'Красно-зеленого', isCorrect: true),
      Answer(text: 'Сине-зеленого', isCorrect: false),
      Answer(text: 'Красно-чёрного', isCorrect: false),
    ]),
    Question(
        title: 'Какой предмет есть в каждой сцене «Бойцовского клуба»?',
        answers: [
          Answer(text: 'Бутылка Pepsi', isCorrect: false),
          Answer(text: 'Пиво Guiness', isCorrect: false),
          Answer(text: 'Сигареты Marlboro', isCorrect: false),
          Answer(text: 'Стаканчик Starbucks', isCorrect: true),
        ]),
    Question(title: 'Какой актер не играл Джокера?', answers: [
      Answer(text: 'Джек Николсон', isCorrect: false),
      Answer(text: 'Марк Хэмилл', isCorrect: false),
      Answer(text: 'Джаред Лето', isCorrect: false),
      Answer(text: 'Леонардо Ди Каприо', isCorrect: true),
    ]),
    Question(title: 'В какой картине не снималась Эмма Стоун?', answers: [
      Answer(text: '«SuperПерцы»', isCorrect: false),
      Answer(text: '«Отличница легкого поведения»', isCorrect: false),
      Answer(text: '«Прислуга»', isCorrect: false),
      Answer(text: '«Больше чем секс»', isCorrect: true),
    ]),
    Question(
        title:
            'Какие персонажи из «Звездных войн» появляются в «Индиане Джонсе»?',
        answers: [
          Answer(text: 'Дарт Вейдер и Дарт Мол', isCorrect: false),
          Answer(text: 'Йода и Оби-Ван Кеноби', isCorrect: false),
          Answer(text: 'Люк Скайуокер и принцесса Лея', isCorrect: false),
          Answer(text: 'R2-D2 и C-3PO', isCorrect: true),
        ]),
    Question(title: 'Кто сыграл Венди Торренс в «Сиянии»?', answers: [
      Answer(text: 'Эми Понд', isCorrect: false),
      Answer(text: 'Шелли Дюваль', isCorrect: true),
      Answer(text: 'Аманда Сайфред', isCorrect: false),
      Answer(text: 'Линда Ронстадт', isCorrect: false),
    ]),
    Question(
        title:
            'Какое слово завершает цитату из «Апокалипсиса сегодня»: «Я люблю запах ___ поутру»?',
        answers: [
          Answer(text: 'Свободы', isCorrect: false),
          Answer(text: 'Перегара', isCorrect: false),
          Answer(text: 'Победы', isCorrect: false),
          Answer(text: 'Напалма', isCorrect: true),
        ]),
    Question(title: 'Какой фильм — самый кассовый в истории кино?', answers: [
      Answer(text: '«Аватар»', isCorrect: true),
      Answer(text: '«Мстители: Финал»', isCorrect: false),
      Answer(text: '«Титаник»', isCorrect: false),
      Answer(text: '«Джокер»', isCorrect: false),
    ]),
  ];

  List<Question> get questions => [..._data];
}
