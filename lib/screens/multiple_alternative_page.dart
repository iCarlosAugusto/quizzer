import 'package:flutter/material.dart';
import 'package:quizzer/models/alternatives_entity.dart';

class MultipleAlternativePage extends StatefulWidget {

  
  MultipleAlternativePage({
    super.key,
    required this.question,
    required this.alternatives,
    required this.reply
  });

  String question;
  List<Alternative> alternatives;
  List<String> reply;


  @override
  State<MultipleAlternativePage> createState() => _MultipleAlternativePageState();
}

class _MultipleAlternativePageState extends State<MultipleAlternativePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Multiple")
      ],
    );
  }
}