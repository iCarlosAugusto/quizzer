import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:quizzer/events/move_to_next_question_event.dart';
import 'package:quizzer/main.dart';
import 'package:quizzer/models/alternatives_entity.dart';
import 'package:quizzer/models/game_entity.dart';
import 'package:quizzer/screens/multiple_alternative_page.dart';
import 'package:quizzer/screens/single_alternative/single_alternative_page.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController pageController = PageController();

  List<Alternative> selectedAlternatives = [];

  List<Game> games = [
    Game(
      question: "Quem descobriu o Brasil?",
      alternatives: [
        Alternative(
          id: "1",
          label: "Pedro alves Cabral"
        ),
        Alternative(
          id: "2",
          label: "Pelé"
        ),
        Alternative(
          id: "3",
          label: "Carlos"
        ),
        Alternative(
          id: "4",
          label: "Seu zé"
        ),
      ],
      reply: ["1"],
      gameType: GameType.singleAlternative
    ),
    Game(
      question: "Questão teste",
      alternatives:[
        Alternative(
          id: "1",
          label: "Alternativa certa"
        ),
        Alternative(
          id: "2",
          label: "Alternativa errada"
        ),
        Alternative(
          id: "3",
          label: "Alternativa certa"
        ),
      ],
      reply: ["1", "3"],
      gameType: GameType.multipleAlternative
    )
  ];


  void moveToNextQuestion () {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        itemCount: games.length,
        itemBuilder: (_, index) => Column(
          children: [
            games[index].gameType == GameType.singleAlternative 
              ? SingleAlternativePage(
                question: games[index].question,
                alternatives: games[index].alternatives,
                reply: games[index].reply.first,
                moveToNextQuestion: moveToNextQuestion
              )
              : MultipleAlternativePage(
                question: games[index].question,
                alternatives: games[index].alternatives,
                reply: games[index].reply,
              )
          ],
        ),
      ),
    );
  }
}
