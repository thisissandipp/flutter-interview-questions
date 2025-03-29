/// {@template question_metadata}
/// A model representing the metadata for an interview question.
/// {@endtemplate}
class QuestionMetadata {
  /// {@macro question_metadata}
  const QuestionMetadata({
    required this.slug,
    required this.difficulty,
    required this.rank,
  });

  /// Converts a Map to a [QuestionMetadata].
  factory QuestionMetadata.fromJson(Map<String, dynamic> json) {
    return QuestionMetadata(
      slug: json['slug'],
      difficulty: QuestionDifficulty.values.byName(json['difficulty']),
      rank: json['rank'],
    );
  }

  /// An identifier for the question, typically a slugified version of the title.
  final String slug;

  /// The difficulty level of the question (easy, intermediate, or advanced).
  final QuestionDifficulty difficulty;

  /// A numerical value determining the position of the question in the list.
  final int rank;

  @override
  String toString() {
    return 'QuestionMetadata(slug: $slug, difficulty: ${difficulty.name}, rank: $rank)';
  }
}

/// Defines the difficulty levels for interview questions.
///
/// - [easy]: Suitable for beginners or fundamental concepts.
/// - [intermediate]: Requires a moderate understanding of Flutter.
/// - [advanced]: Covers complex or in-depth Flutter topics.
enum QuestionDifficulty {
  /// Questions that are uitable for beginners or fundamental concepts.
  easy,

  /// Question that equires a moderate understanding of Flutter.
  intermediate,

  // Question that overs complex or in-depth Flutter topics.
  advanced,
}

/// Extension on [QuestionDifficulty].
extension QuestionDifficultyExtension on QuestionDifficulty {
  /// Whether the question difficulty is easy.
  bool get isEasy {
    return this == QuestionDifficulty.easy;
  }

  /// Whether the question difficulty is intermediate.
  bool get isIntermediate {
    return this == QuestionDifficulty.intermediate;
  }

  /// Whether the question difficulty is advanced.
  bool get isAdvanced {
    return this == QuestionDifficulty.advanced;
  }
}
