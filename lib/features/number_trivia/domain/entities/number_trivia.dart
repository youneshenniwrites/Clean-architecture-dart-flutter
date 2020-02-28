import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

// What kind of data will the Number Trivia App operate with?
class NumberTrivia extends Equatable {
  final int number;
  final String text;

  const NumberTrivia({
    @required this.number,
    @required this.text,
  });

  @override
  List<Object> get props => [number, text];
}
