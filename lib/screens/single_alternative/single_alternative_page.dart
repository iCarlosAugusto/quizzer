import 'package:flutter/material.dart';
import 'package:quizzer/models/alternatives_entity.dart';
import 'package:quizzer/screens/single_alternative/single_alternative_controlle.dart';

class SingleAlternativePage extends StatelessWidget {
  SingleAlternativePage({
    super.key,
    required this.question,
    required this.alternatives,
    required this.reply
  });

  String question;
  List<Alternative> alternatives;
  String reply;
  @override
  Widget build(BuildContext context) {

    SingleAlternativeController controller = SingleAlternativeController();

    return Column(
      children: [
        Text(question),
        ListView.builder(
          shrinkWrap: true,
          itemCount: alternatives.length,
          itemBuilder: (_, int index) => ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: controller.currentAlternativeSelected != null && controller.currentAlternativeSelected!.id == alternatives[index].id
               ? Colors.blue
               : Colors.white
            ),
            child: Text(alternatives[index].label),
            onPressed: () {
              controller.setCurrentAlternativeSelected(alternatives[index]);
            },
          )
        ),
      ],
    );
  }
}