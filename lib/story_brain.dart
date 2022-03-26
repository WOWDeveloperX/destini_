import 'package:distini/story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'У вашей машины пробило колесо на извилистой дороге в глуши, где нет приема сотовой связи. Вы решаете ехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Мужчина в широкополой шляпе с бездушными глазами открывает перед вами пассажирскую дверь и спрашивает: "Тебя подвезти, парень?".',
        choice1: 'Я заскочу. Спасибо за помощь!',
        choice2: 'Лучше сначала спросите его, является ли он убийцей.'),
    Story(
        storyTitle: 'Он медленно кивает, не обеспокоенный вопросом.',
        choice1: 'По крайней мере, он честен. Я залезу.',
        choice2: 'Подожди, я знаю, как менять шины.'),
    Story(
        storyTitle:
            'Когда вы начинаете ехать, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы находите окровавленный нож, два отрезанных пальца и кассету с записью Элтона Джона. Он тянется к бардачку.',
        choice1: 'Я люблю Элтона Джона! Передай ему кассету.',
        choice2: 'Или он, или я! Возьми нож и зарежь его.'),
    Story(
        storyTitle:
            'Что? Это просто отговорка! Знаете ли вы, что дорожно-транспортные происшествия являются второй основной причиной смерти от несчастных случаев для большинства взрослых возрастных групп?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Когда вы пробиваете ограждение и падаете на зубчатые скалы внизу, вы размышляете о сомнительной мудрости нанесения ножевого ранения кому-либо, когда он управляет автомобилем, в котором находитесь вы.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Вы сближаетесь с убийцей, напевая слова песни "Can you feel the love tonight". Он высаживает вас в следующем городе. Перед отъездом он спрашивает вас, не знаете ли вы хороших мест для сброса трупов. Вы отвечаете: "Попробуйте на пирсе".',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int userChoice) {
    if (userChoice == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (userChoice == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (userChoice == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (userChoice == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (userChoice == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (userChoice == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
