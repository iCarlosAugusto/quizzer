import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quizzer/models/alternatives_entity.dart';

class MultipleAlternativePage extends StatelessWidget {
  
  MultipleAlternativePage({
    super.key,
    required this.question,
    required this.alternatives,
    required this.reply,
    required this.moveToNextQuestion
  });

  String question;
  List<Alternative> alternatives;
  List<String> reply;
  Function moveToNextQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(question),
        ListView.builder(
          shrinkWrap: true,
          itemCount: alternatives.length,
          itemBuilder: (_, int index) => Observer(
            builder: (_) =>ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white
                  //controller.currentAlternativeSelected != null && controller.currentAlternativeSelected!.id == alternatives[index].id
                  // ? Colors.blue
                  // : Colors.white
                ),
                child: Text(alternatives[index].label),
                onPressed: () {
                  // controller.setCurrentAlternativeSelected(alternatives[index]);
                },
            )
          )
        ),

        ElevatedButton(
          child: const Text("Responder"),
          onPressed: () {
            //bool? isCorrect = controller.validateAlternative(reply: reply);
            //if(isCorrect != null) {
            //  moveToNextQuestion();
            //  ScaffoldMessenger.of(context).showSnackBar(
            //    SnackBar(content: Text(isCorrect ? "Certo" : "Errado!"))
            //  );
            //}
          },
        )
      ],
    );
  }
}