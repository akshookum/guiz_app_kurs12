import 'dart:developer';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:guiz_app_kurs12/models/questions_model.dart';

class QuizData {
  int index = 0;

  static List<QuestionModel> suroolorJooptor = [
    QuestionModel(
      suroolor: 'Кыргызстанда 7 область барбы?',
      jooptor: true,
      katarNomeri: 0,
    ),
    QuestionModel(
      suroolor: 'Кыргызстанда алтын кени  барбы ?',
      jooptor: true,
      katarNomeri: 1,
    ),
    QuestionModel(
      suroolor: 'Кыргызстан эн чон олкобу?',
      jooptor: false,
      katarNomeri: 2,
    ),
  ];
  String suroonuAlipKel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].suroolor!;
    } else {
      return '';
    }
  }

  bool joopAlypkel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].jooptor!;
    } else {
      return false;
    }
  }

  void otkoz() {
    index++;
  }

  void kairabashta() {
    index = 0;
  }
}

final QuizData quizData = QuizData();
