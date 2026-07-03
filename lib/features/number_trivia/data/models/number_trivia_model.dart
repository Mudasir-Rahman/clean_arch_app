import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({required String text, required double number})
    : super(text: text, number: number);
}
