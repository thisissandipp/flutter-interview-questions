/// {@template question_formatter}
/// A formatter class that represents a structured question with a title and content.
///
/// This class is used to store and format questions, where:
/// - [title] is the heading of the question.
/// - [content] is the main body or answer of the question.
/// {@endtemplate}
class QuestionFormatter {
  /// {@macro question_formatter}
  const QuestionFormatter({required this.title, required this.content});

  /// The title or heading of the question.
  final String title;

  /// The detailed content or answer of the question.
  final String content;

  @override
  String toString() => 'QuestionFormatter(title: $title, content: $content)';
}
