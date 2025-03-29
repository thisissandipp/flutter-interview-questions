<div align="center">
  <img height="60" src="https://img.icons8.com/color/256/flutter.png">
  <h1>Flutter Interview Questions</h1>
</div>

## Table of Contents

This list contains common Flutter interview questions and their answers. From basic to advanced, test your understanding of Flutter and Dart, brush up on your knowledge, or get ready for your next coding interview! Each question is linked directly to its detailed explanation, making it easy to navigate and review specific topics efficiently.

<!-- QUESTIONS:TOC:START -->

| No. | Questions | Level |
| --- | :-- | :-- |
| 1 | [What is Flutter?](#what-is-flutter) | Easy |
| 2 | [What is Dart and Why does Flutter use it?](#what-is-dart-and-why-does-flutter-use-it) | Easy |
| 3 | [What is `pubspec.yaml` file and what does it do?](#what-is-pubspecyaml-file-and-what-does-it-do) | Easy |
| 4 | [What is the difference between `main()` and `runApp()` functions in Flutter?](#what-is-the-difference-between-main-and-runapp-functions-in-flutter) | Easy |
| 5 | [Differentiate between named parameters and positional parameters in Flutter.](#differentiate-between-named-parameters-and-positional-parameters-in-flutter) | Easy |
| 6 | [What are widgets in Flutter?](#what-are-widgets-in-flutter) | Easy |
| 7 | [What is `Hot Reload` and `Hot Restart` in Flutter?](#what-is-hot-reload-and-hot-restart-in-flutter) | Easy |

<!-- QUESTIONS:TOC:END -->

## All Questions with Answers

<!-- QUESTIONS:ALL:START -->

### What is Flutter?
      
<!-- Update here: /questions/what-is-flutter/en-US.mdx -->

Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, and the web from a single codebase. Flutter was released in May 2017. Developers consider it as the fastest and most expressive way to create native apps. Flutter will have a significant impact on the development of high-quality, feature-packed mobile applications in the near future due to its simplicity, high performance as a result of its development, and rich user interface.

<!-- Update here: /questions/what-is-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-flutter/en-US.mdx)

<br>
      
### What is Dart and Why does Flutter use it?
      
<!-- Update here: /questions/what-is-dart-and-why-does-flutter-use-it/en-US.mdx -->

Dart is a programming language designed for client development, such as for the web and mobile apps. It is developed by Google and can also be used to build server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax.

- Dart allows Flutter to avoid the need for a separate declarative layout language like JSX or XML, or separate visual interface builders, because Dart's declarative, programmatic layout is easy to read and visualize.
- Dart uses the Just In Time compilation. This drastically reduces the time of development and responds faster.

<!-- Update here: /questions/what-is-dart-and-why-does-flutter-use-it/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-dart-and-why-does-flutter-use-it/en-US.mdx)

<br>
      
### What is `pubspec.yaml` file and what does it do?
      
<!-- Update here: /questions/what-is-pubspecyaml-file-and-what-does-it-do/en-US.mdx -->

Every Flutter project includes a `pubspec.yaml` file, which is generated while creating a new Flutter project. It’s located at the top of the project tree and contains metadata about the project that the Dart and Flutter tooling needs to know.

The pubspec file specifies dependencies that the project requires, such as particular packages (and their versions), fonts, or image files. It also specifies other requirements, such as dependencies on developer packages (like testing or mocking packages), or particular constraints on the version of the Flutter SDK.

<!-- Update here: /questions/what-is-pubspecyaml-file-and-what-does-it-do/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-pubspecyaml-file-and-what-does-it-do/en-US.mdx)

<br>
      
### What is the difference between `main()` and `runApp()` functions in Flutter?
      
<!-- Update here: /questions/what-is-the-difference-between-main-and-runapp-functions-in-flutter/en-US.mdx -->

The `main()` function tells Dart where the program starts, and it must be in the file that is considered the "entry point" for the program. By convention, this will be in a file called `main.dart`. This main function can execute any code within it's code block.

The `runApp()` function should return widget that would be attached to the screen as a root of the widget tree that will be rendered.

<!-- Update here: /questions/what-is-the-difference-between-main-and-runapp-functions-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-the-difference-between-main-and-runapp-functions-in-flutter/en-US.mdx)

<br>
      
### Differentiate between named parameters and positional parameters in Flutter.
      
<!-- Update here: /questions/differentiate-between-named-parameters-and-positional-parameters-in-flutter/en-US.mdx -->

A `Positional Parameter` is linked by its position. Positional parameters must be specified in the order in which they appear. `Named Parameters` are referenced by name, which means that they can be used during the function invocation in an order different from the function declaration.

To declare a positional optional parameter, we use square brackets `[ ]`, whereas to declare a named optional parameters we use curly braces `{ }`.

```dart
doSomething(String name, [String greeting = 'Hello']); // Positional Optional Parameter
doSomething({String? name, String greeting = 'Hello'}); // Named Optional Parameter
```

<!-- Update here: /questions/differentiate-between-named-parameters-and-positional-parameters-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/differentiate-between-named-parameters-and-positional-parameters-in-flutter/en-US.mdx)

<br>
      
### What are widgets in Flutter?
      
<!-- Update here: /questions/what-are-widgets-in-flutter/en-US.mdx -->

Widgets are the central class hierarchy in the Flutter framework, that describes the configuration of an element to manage the underlying render tree. A widget is an immutable description of part of a user interface. Widgets themselves have no mutable state, i.e., all their fields must be final.

In Flutter, **everything is a widget**.

<!-- Update here: /questions/what-are-widgets-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-are-widgets-in-flutter/en-US.mdx)

<br>
      
### What is `Hot Reload` and `Hot Restart` in Flutter?
      
<!-- Update here: /questions/what-is-hot-reload-and-hot-restart-in-flutter/en-US.mdx -->

Flutter's `Hot Reload` feature injects the updated source code files into the running **Dart Virtual Machine (VM)**, and rebuilds the widget tree preserving the app state to quickly view the effects of the changes.

Whereas `Hot Restart` loads the updated source code files into the VM and restarts the Flutter app, losing all the previous app states.

<!-- Update here: /questions/what-is-hot-reload-and-hot-restart-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-hot-reload-and-hot-restart-in-flutter/en-US.mdx)

<br>
      

<!-- QUESTIONS:ALL:END -->

## Questions by Difficulty

Flutter Interview Questions categorized by difficulty.

### Easy-level Flutter Interview Questions

<!-- QUESTIONS:EASY:START -->

1. [What is Flutter?](#what-is-flutter)
2. [What is Dart and Why does Flutter use it?](#what-is-dart-and-why-does-flutter-use-it)
3. [What is `pubspec.yaml` file and what does it do?](#what-is-pubspecyaml-file-and-what-does-it-do)
4. [What is the difference between `main()` and `runApp()` functions in Flutter?](#what-is-the-difference-between-main-and-runapp-functions-in-flutter)
5. [Differentiate between named parameters and positional parameters in Flutter.](#differentiate-between-named-parameters-and-positional-parameters-in-flutter)
6. [What are widgets in Flutter?](#what-are-widgets-in-flutter)
7. [What is `Hot Reload` and `Hot Restart` in Flutter?](#what-is-hot-reload-and-hot-restart-in-flutter)

<!-- QUESTIONS:EASY:END -->

### Intermediate-level Flutter Interview Questions

<!-- QUESTIONS:INTERMEDIATE:START -->



<!-- QUESTIONS:INTERMEDIATE:END -->

### Advanced-level Flutter Interview Questions

<!-- QUESTIONS:ADVANCED:START -->



<!-- QUESTIONS:ADVANCED:END -->
