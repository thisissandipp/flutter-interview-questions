import 'dart:convert';
import 'dart:io';

import 'package:flutter_interview_questions/flutter_interview_questions.dart';
import 'package:path/path.dart' as path;

/// A class responsible for generating and updating the README.md file.
class QuestionGenerator {
  /// Directory where all the questions are stored.
  static final Directory questionsDir = Directory(path.join('.', 'questions'));

  /// The auto-generated README file location.
  static final File genReadmeFile = File(path.join('.', 'README.md'));

  // Github organization name and repository names for generating edit links.
  static const String kGithubOrg = 'thisissandipp';
  static const String kGithubRepo = 'flutter-interview-questions';

  /// Generates formatted content for each question, including edit links.
  String generateQuestionsContent(
    List<QuestionItem> questionItems, [
    String locale = 'en-US',
    String tableOfContentsAnchor = 'table-of-contents',
  ]) {
    final generatedContent = <String>[];
    for (final item in questionItems) {
      generatedContent.add('''### ${item.formatter.title}
      
<!-- Update here: /questions/${item.metadata.slug}/$locale.mdx -->

${item.formatter.content}

<!-- Update here: /questions/${item.metadata.slug}/$locale.mdx -->

<br>

[Back to top ↑](#$tableOfContentsAnchor) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/$kGithubOrg/$kGithubRepo/edit/main/questions/${item.metadata.slug}/$locale.mdx)

<br>
      ''');
    }
    return generatedContent.join('\n');
  }

  /// Generates a markdown Table of Contents from the list of questions.
  String generateTableOfContents(List<QuestionItem> questionItems) {
    final tableOfContentsLines = [
      '| No. | Questions | Level |',
      '| --- | :-- | :-- |',
    ];

    for (final item in questionItems) {
      tableOfContentsLines.add(
        '| ${item.metadata.rank} | [${item.formatter.title}](#${item.metadata.slug}) | '
        '${item.metadata.difficulty.name.capitalize} |',
      );
    }

    return tableOfContentsLines.join('\n');
  }

  /// Generates a simple bullet list of questions.
  String generateBulletList(List<QuestionItem> questionItems) {
    int counter = 1;
    List<String> generatedContent = [];
    for (final item in questionItems) {
      generatedContent.add(
        '${counter++}. [${item.formatter.title}](#${item.metadata.slug})',
      );
    }
    return generatedContent.join('\n');
  }

  /// Reads the README file and updates content within a specific placeholder.
  Future<void> updateReadmeContent({
    required String content,
    required String placeholderRegexPattern,
  }) async {
    final readmeFileContent = await genReadmeFile.readAsString();
    final contentPlaceholderRegExp = RegExp(placeholderRegexPattern);
    final match = contentPlaceholderRegExp.firstMatch(readmeFileContent);

    if (match == null) {
      throw Exception('Invalid Regex Pattern: $placeholderRegexPattern');
    }

    final firstGroup = match.group(1);
    final lastGroup = match.group(3);

    if (firstGroup == null || lastGroup == null) {
      throw Exception(
        'Unable to extract match groups: $placeholderRegexPattern',
      );
    }

    final updatedContent = readmeFileContent.replaceFirst(
      contentPlaceholderRegExp,
      '$firstGroup\n\n$content\n\n$lastGroup',
    );

    await genReadmeFile.writeAsString(updatedContent);
  }

  /// Extracts [QuestionItem]s by reading and formatting MDX files.
  Future<List<QuestionItem>> extractQuestionItems(
    List<QuestionMetadata> questionsMetadata, [
    String locale = 'en-US',
  ]) async {
    final questionItems = <QuestionItem>[];

    for (final metadata in questionsMetadata) {
      final localeFilePath = path.join(
        questionsDir.path,
        metadata.slug,
        '$locale.mdx',
      );
      final localeFile = File(localeFilePath);

      if (!localeFile.existsSync()) {
        throw Exception('Locale file does not exist for ${metadata.slug}');
      }

      final mdxContent = await localeFile.readAsString();
      final question = Utils.formatQuestion(mdxContent, localeFilePath);

      final questionItem = QuestionItem(
        metadata: metadata,
        formatter: question,
      );
      questionItems.add(questionItem);
    }

    return questionItems;
  }

  /// Reads and parses question metadata from `metadata.json` files 
  /// inside the `questions/` directory.
  Future<List<QuestionMetadata>> readQuestionsMetadata() async {
    final List<QuestionMetadata> metadata = [];

    final questionsDirExists = await questionsDir.exists();
    if (!questionsDirExists) {
      throw Exception('Error: Questions directory not found!');
    }

    await for (var entity in questionsDir.list()) {
      if (entity is Directory) {
        final metadataFilePath = path.join(entity.path, 'metadata.json');
        final metadataFile = File(metadataFilePath);

        if (metadataFile.existsSync()) {
          final content = await metadataFile.readAsString();
          final jsonDecoded = jsonDecode(content) as Map<String, dynamic>;
          final questionsMetadata = QuestionMetadata.fromJson(jsonDecoded);

          // Check if the metadata slug matches the questions slug, else stop processing
          // and throw an error.
          final questionSlug = entity.uri.pathSegments[1];
          if (questionSlug != questionsMetadata.slug) {
            throw Exception(
              'Mismatch in directory and slug: $questionSlug vs ${questionsMetadata.slug}',
            );
          }

          metadata.add(questionsMetadata);
        }
      }
    }

    return metadata;
  }

  /// Generates and updates the README with:
  /// - Table of Contents
  /// - All questions with their formatted content
  /// - Difficulty-specific question lists 
  Future<void> generateReadmeContents() async {
    final questionsMetadata = await readQuestionsMetadata();
    questionsMetadata.sort((a, b) => a.rank - b.rank);
    final questionItems = await extractQuestionItems(questionsMetadata);

    final newTableOfContents = generateTableOfContents(questionItems);
    final newQuestionContent = generateQuestionsContent(questionItems);

    await updateReadmeContent(
      content: newTableOfContents,
      placeholderRegexPattern:
          r'(<!-- QUESTIONS:TOC:START -->)\n([\s\S]*?)\n(<!-- QUESTIONS:TOC:END -->)',
    );

    await updateReadmeContent(
      content: newQuestionContent,
      placeholderRegexPattern:
          r'(<!-- QUESTIONS:ALL:START -->)\n([\s\S]*?)\n(<!-- QUESTIONS:ALL:END -->)',
    );

    final easyItems =
        questionItems.where((item) => item.metadata.difficulty.isEasy).toList();
    final newEasyContent = generateBulletList(easyItems);

    await updateReadmeContent(
      content: newEasyContent,
      placeholderRegexPattern:
          r'(<!-- QUESTIONS:EASY:START -->)\n([\s\S]*?)\n(<!-- QUESTIONS:EASY:END -->)',
    );

    final intermediateItems =
        questionItems
            .where((item) => item.metadata.difficulty.isIntermediate)
            .toList();
    final newIntermediateContent = generateBulletList(intermediateItems);

    await updateReadmeContent(
      content: newIntermediateContent,
      placeholderRegexPattern:
          r'(<!-- QUESTIONS:INTERMEDIATE:START -->)\n([\s\S]*?)\n(<!-- QUESTIONS:INTERMEDIATE:END -->)',
    );

    final advancedItems =
        questionItems
            .where((item) => item.metadata.difficulty.isAdvanced)
            .toList();
    final newAdvancedContent = generateBulletList(advancedItems);

    await updateReadmeContent(
      content: newAdvancedContent,
      placeholderRegexPattern:
          r'(<!-- QUESTIONS:ADVANCED:START -->)\n([\s\S]*?)\n(<!-- QUESTIONS:ADVANCED:END -->)',
    );
  }
}
