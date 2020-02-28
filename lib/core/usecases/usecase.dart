import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class Params extends Equatable {
  final int number;

  const Params({@required this.number});

  @override
  List<Object> get props => [number];
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
