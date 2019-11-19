import 'package:flutter/material.dart';
import 'package:bdi_test7/quiz.dart';
import 'package:bdi_test7/result.dart';

void main() => runApp(FlutterGuideApp());

class FlutterGuideApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterGuideAppState();
  }
}

class _FlutterGuideAppState extends State<FlutterGuideApp> {
  final _questions = [
    {
      'questionText': '1. Печаль',
      'answers': [
        {'text': 'Мне не грустно.', 'score': 0},
        {'text': 'Я чувствую печаль большую часть времени.', 'score': 1},
        {'text': 'Я все время печален.', 'score': 2},
        {'text': 'Я так печален и несчастлив, что я не могу этого вынести.', 'score': 3}
      ]
    },
    {
      'questionText': '2. Пессимизм',
      'answers': [
        {'text': 'Я не тревожусь о своем будущем.', 'score': 0},
        {'text': 'Я тревожусь о будущем больше обычного.', 'score': 1},
        {'text': 'Я чувствую, что меня ничего не ждет в будущем.', 'score': 2},
        {'text': 'Мое будущее безнадежно и будет еще хуже.', 'score': 3},
      ]
    },
    {
      'questionText': '3. Ощущение несостоятельности',
      'answers': [
        {'text': 'Я не чувствую себя неудачником.', 'score': 0},
        {'text': 'Я потерпел больше неудач, чем следовало бы.', 'score': 1},
        {'text': 'Когда я оглядываюсь на свою жизнь, я вижу в ней много неудач.', 'score': 2},
        {'text': 'Я чувствую, что как личность я — полный неудачник.', 'score': 3},
      ]
    },
    {
      'questionText': '4. Потеря удовольствия',
      'answers': [
        {'text': 'Я получаю так же много удовольствия от того, чем я всегда наслаждался.', 'score': 0},
        {'text': 'Я не получаю такого же удовольствия, как раньше.', 'score': 1},
        {'text': 'Я получаю совсем немного удовольствия от тех вещей, которыми привык наслаждаться.', 'score': 2},
        {'text': 'Я не получаю никакого удовольствия от того, чем обычно наслаждался.', 'score': 3},
      ]
    },
    {
      'questionText': '5. Чувство вины',
      'answers': [
        {'text': 'Я не чувствую себя виноватым в чем-либо.', 'score': 0},
        {'text': 'Я чувствую себя виноватым за многое, что я сделал или должен был бы сделать.', 'score': 1},
        {'text': 'Я чувствую себя виноватым большую часть времени.', 'score': 2},
        {'text': 'Я чувствую себя виноватым все время.', 'score': 3},
      ]
    },
    {
      'questionText': '6. Ощущение наказанности',
      'answers': [
        {'text': 'Я не чувствую, что могу быть наказанным за что-либо.', 'score': 0},
        {'text': 'Я чувствую, что могу быть наказан за что-либо.', 'score': 1},
        {'text': 'Я ожидаю, что буду наказан.', 'score': 2},
        {'text': 'Я чувствую себя уже наказанным.', 'score': 3},
      ]
    },
    {
      'questionText': '7. Нелюбовь к себе',
      'answers': [
        {'text': 'Мое отношение к себе не изменилось.', 'score': 0},
        {'text': 'Я потерял уверенность в себе.', 'score': 1},
        {'text': 'Я разочарован в себе.', 'score': 2},
        {'text': 'Я не люблю себя.', 'score': 3},
      ]
    },
    {
      'questionText': '8. Самокритичность',
      'answers': [
        {'text': 'Я критикую или обвиняю себя не больше, чем обычно.', 'score': 0},
        {'text': 'Я более критичен к себе, чем раньше.', 'score': 1},
        {'text': 'Я критикую себя за все свои ошибки.', 'score': 2},
        {'text': 'Я виню себя во всем плохом, что происходит.', 'score': 3},
      ]
    },
    {
      'questionText': '9. Суицидальные мысли',
      'answers': [
        {'text': 'Я никогда не думал покончить с собой.', 'score': 0},
        {'text': 'У меня есть мысли о том, чтобы покончить с собой, но я этого не сделаю.', 'score': 1},
        {'text': 'Я хотел бы покончить с собой.', 'score': 2},
        {'text': 'Я бы убил себя, если бы представился случай.', 'score': 3},
      ]
    },
    {
      'questionText': '10. Слезливость',
      'answers': [
        {'text': 'Я плачу не больше, чем обычно.', 'score': 0},
        {'text': 'Я плачу больше, чем обычно.', 'score': 1},
        {'text': 'Я плачу по любому незначительному поводу.', 'score': 2},
        {'text': 'Мне хочется плакать, но я уже не могу.', 'score': 3},
      ]
    },
    {
      'questionText': '11. Возбуждение',
      'answers': [
        {'text': 'Я не более обеспокоен или взволнован, чем обычно.', 'score': 0},
        {'text': 'Я чувствую себя более беспокойно или взволнованно, чем обычно.', 'score': 1},
        {'text': 'Я так взволнован и обеспокоен, что мне трудно оставаться на месте.', 'score': 2},
        {'text': 'Я так взволнован и взвинчен, что мне нужно двигаться или делать хоть что-нибудь.', 'score': 3},
      ]
    },
    {
      'questionText': '12. Потеря интереса',
      'answers': [
        {'text': 'Я не утратил интереса к другим людям и делам.', 'score': 0},
        {'text': 'Я меньше интересуюсь другими людьми и делами.', 'score': 1},
        {'text': 'Я практически потерял интерес к другим людям и делам.', 'score': 2},
        {'text': 'Мне тяжело заинтересоваться чем-либо.', 'score': 3},
      ]
    },
    {
      'questionText': '13. Нерешительность',
      'answers': [
        {'text': 'Я принимаю решения так же, как всегда.', 'score': 0},
        {'text': 'Принятие решений дается мне труднее, чем обычно.', 'score': 1},
        {'text': 'Мне гораздо труднее, чем раньше, дается принятие решений.', 'score': 2},
        {'text': 'У меня есть проблемы с принятием любых решений.', 'score': 3},
      ]
    },
    {
      'questionText': '14. Бесполезность',
      'answers': [
        {'text': 'Я не чувствую себя бесполезным.', 'score': 0},
        {'text': 'Я не чувствую себя таким же стоящим и полезным, как раньше.', 'score': 1},
        {'text': 'Я чувствую себя менее полезным по сравнению с другими людьми.', 'score': 2},
        {'text': 'Я чувствую себя совершенно никчемным.', 'score': 3},
      ]
    },
    {
      'questionText': '15. Обессиленность',
      'answers': [
        {'text': 'Я энергичен так же, как всегда.', 'score': 0},
        {'text': 'У меня меньше энергии, чем обычно.', 'score': 1},
        {'text': 'Мне не хватает сил на очень многое.', 'score': 2},
        {'text': 'У меня ни на что не хватает сил.', 'score': 3},
      ]
    },
    {
      'questionText': '16. Изменения в шаблоне сна',
      'answers': [
        {'text': 'Я не испытываю никаких изменений в шаблоне сна.', 'score': 0},
        {'text': 'Я сплю немного больше обычного.', 'score': 1},
        {'text': 'Я сплю намного меньше, чем обычно.', 'score': 2},
        {'text': 'Я сплю большую часть дня.', 'score': 3},
        {'text': 'Я просыпаюсь через каждый час или два.', 'score': 4},
      ]
    },
    {
      'questionText': '17. Раздражительность',
      'answers': [
        {'text': 'Я не более раздражителен, чем обычно.', 'score': 0},
        {'text': 'Я более раздражителен, чем обычно.', 'score': 1},
        {'text': 'Я гораздо более раздражителен, чем обычно.', 'score': 2},
        {'text': 'Я всегда раздражен.', 'score': 3},
      ]
    },
    {
      'questionText': '18. Изменения в аппетите',
      'answers': [
        {'text': 'Мой аппетит не изменился.', 'score': 0},
        {'text': 'Я ем немного меньше обычного.', 'score': 1},
        {'text': 'Я ем немного больше обычного.', 'score': 2},
        {'text': 'Мой аппетит намного меньше, чем раньше.', 'score': 3},
        {'text': 'Мой аппетит намного больше обычного.', 'score': 4},
        {'text': 'У меня нет аппетита вообще.', 'score': 5},
        {'text': 'Я все время хочу есть.', 'score': 6},
      ]
    },
    {
      'questionText': '19. Концентрация внимания',
      'answers': [
        {'text': 'Я могу сосредоточиваться так же хорошо, как всегда.', 'score': 0},
        {'text': 'Я не могу сконцентрироваться так же хорошо, как обычно.', 'score': 1},
        {'text': 'Мне трудно сосредоточиться на чем-то надолго.', 'score': 2},
        {'text': 'Я считаю, что не могу сконцентрироваться ни на чем.', 'score': 3},
      ]
    },
    {
      'questionText': '20. Усталость или утомление',
      'answers': [
        {'text': 'Я не более уставший или утомленный, чем обычно.', 'score': 0},
        {'text': 'Я устаю или утомляюсь легче, чем обычно.', 'score': 1},
        {'text': 'Я слишком устал и утомлен, чтобы делать многое из привычных для себя вещей.', 'score': 2},
        {'text': 'Я слишком устал и утомлен, чтобы делать большинство привычных дел.', 'score': 3},
      ]
    },
    {
      'questionText': '21. Потеря сексуального влечения',
      'answers': [
        {'text': 'Я не заметил никаких изменений в своем интересе к сексу.', 'score': 0},
        {'text': 'Секс интересует меня меньше, чем раньше.', 'score': 1},
        {'text': 'Сейчас секс интересует меня гораздо меньше.', 'score': 2},
        {'text': 'Я полностью потерял интерес к сексу.', 'score': 3},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Questions App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}