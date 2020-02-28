import 'package:flutter/foundation.dart';

import '../../domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({
    @required int number,
    @required String text,
  }) : super(number: number, text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json['text'] as String,
      number: json['number'].toInt() as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "text": text,
      "number": number,
    };
  }
}
