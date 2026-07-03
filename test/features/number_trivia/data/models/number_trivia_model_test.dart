import 'package:clean_architecture_app/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(text: 'test trivia', number: 1);
  test('should be a subclass of NumberTrivia entity', () async {
    // assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}
