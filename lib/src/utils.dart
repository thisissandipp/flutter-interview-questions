import 'package:flutter_interview_questions/flutter_interview_questions.dart';
import 'package:yaml/yaml.dart';

/// A utility class that provides helper methods for processing MDX content.
class Utils {
  /// Extracts and formats a question from an MDX file by parsing its front matter.
  ///
  /// The method:
  /// 1. Extracts the front matter block (YAML format) from the MDX content.
  /// 2. Parses the front matter to retrieve the question title.
  /// 3. Extracts the main content of the question after the front matter.
  ///
  /// Throws an exception if the MDX content is not properly formatted
  /// or title is not present.
  static QuestionFormatter formatQuestion(
    String mdxContent,
    String localeFilePath,
  ) {
    final regex = RegExp(r'^---\n([\s\S]*?)\n---', multiLine: true);
    final match = regex.firstMatch(mdxContent);

    if (match == null) {
      throw Exception(
        '$localeFilePath: The MDX Content is not properly formatted',
      );
    }

    final frontMatterContent = match.group(1);
    if (frontMatterContent == null) {
      throw Exception(
        '$localeFilePath: The MDX Content is not properly formatted',
      );
    }

    final frontMatter = loadYaml(frontMatterContent) as YamlMap;
    if (!frontMatter.containsKey('title')) {
      throw Exception('$localeFilePath: The MDX Content does not have a title');
    }

    final title = frontMatter['title'];
    final content = mdxContent.replaceFirst(regex, '').trim();

    return QuestionFormatter(title: title, content: content);
  }
}

/// Extension on String
extension StringExtension on String {
  /// Capitalize the first letter of the string.
  String get capitalize {
    return substring(0, 1).toUpperCase() + substring(1).toLowerCase();
  }
}
