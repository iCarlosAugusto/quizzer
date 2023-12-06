import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:quizzer/models/alternatives_entity.dart';
import 'package:quizzer/utils/context.dart';
part 'single_alternative_controlle.g.dart';

class SingleAlternativeController = _SingleAlternativeControllerBase with _$SingleAlternativeController;

abstract class _SingleAlternativeControllerBase with Store {
  
  @observable
  Alternative? currentAlternativeSelected;

  @action
  setCurrentAlternativeSelected(Alternative newAlternative) {
    currentAlternativeSelected = newAlternative;
  }

  @action
  bool? validateAlternative({required String reply}) {
    if(currentAlternativeSelected != null) {
      return currentAlternativeSelected!.id == reply ? true : false;
    }
    return null;
  }
}