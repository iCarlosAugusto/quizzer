import 'package:quizzer/models/alternatives_entity.dart';

enum GameType {
  singleAlternative,
  multipleAlternative
}

class Game {
  String question;
  List<Alternative> alternatives;
  List<String> reply;
  GameType gameType;

  Game({
    required this.question,
    required this.alternatives,
    required this.reply,
    required this.gameType
  });
}