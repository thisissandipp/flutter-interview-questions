import 'package:flutter_interview_questions/flutter_interview_questions.dart';

/// {@template question_item}
/// Represents a structured question item with metadata and formatted content.
/// {@endtemplate}
class QuestionItem {
  /// {@macro question_item}
  const QuestionItem({required this.metadata, required this.formatter});

  /// Metadata associated with the question
  final QuestionMetadata metadata;

  /// Formatted content of the question, including its title and body.
  final QuestionFormatter formatter;

  @override
  String toString() => 'QuestionItem(metadata: $metadata, formatter: $formatter)';
}
