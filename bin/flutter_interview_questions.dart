import 'package:flutter_interview_questions/flutter_interview_questions.dart' as flutter_interview_questions;

Future<void> main(List<String> arguments) async {
  final generator = flutter_interview_questions.QuestionGenerator();
  await generator.generateReadmeContents();
}
