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
| 8 | [What do you mean by open-source software? Is Flutter open-source?](#what-do-you-mean-by-open-source-software-is-flutter-open-source) | Easy |
| 9 | [Differentiate between `StatelessWidget` and `StatefulWidget` in Flutter.](#differentiate-between-statelesswidget-and-statefulwidget-in-flutter) | Easy |
| 10 | [What is `BuildContext` in Flutter? And why is it needed?](#what-is-buildcontext-in-flutter-and-why-is-it-needed) | Intermediate |
| 11 | [What are packages and plugins in Flutter?](#what-are-packages-and-plugins-in-flutter) | Easy |
| 12 | [Name some popular apps made with Flutter.](#name-some-popular-apps-made-with-flutter) | Easy |
| 13 | [What are different build modes in Flutter?](#what-are-different-build-modes-in-flutter) | Intermediate |
| 14 | [What is the difference between `WidgetsApp` and `MaterialApp` in Flutter?](#what-is-the-difference-between-widgetsapp-and-materialapp-in-flutter) | Intermediate |
| 15 | [Differentiate between final, const and static keyword.](#differentiate-between-final-const-and-static-keyword) | Easy |
| 16 | [What are `StatefulWidget` Lifecycle methods. Explain briefly.](#what-are-statefulwidget-lifecycle-methods-explain-briefly) | Intermediate |
| 17 | [What are keys and why do we need them?](#what-are-keys-and-why-do-we-need-them) | Intermediate |
| 18 | [What is the difference between `Expanded` and `Flexible` widget?](#what-is-the-difference-between-expanded-and-flexible-widget) | Intermediate |
| 19 | [What is Fat Arrow Notation in Dart?](#what-is-fat-arrow-notation-in-dart) | Easy |
| 20 | [What is the purpose of `SafeArea` widget in Flutter?](#what-is-the-purpose-of-safearea-widget-in-flutter) | Easy |

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
      
### What do you mean by open-source software? Is Flutter open-source?
      
<!-- Update here: /questions/what-do-you-mean-by-open-source-software-is-flutter-open-source/en-US.mdx -->

Open-source software is software with source code that anyone can inspect, modify, and enhance. Open-source software is developed in a decentralized and collaborative way, relying on peer review and community production. Open source software is often cheaper, more flexible, and has more longevity than its proprietary peers because it is developed by communities rather than a single author or company.

Yes, Flutter is an open-source software development kit.

<!-- Update here: /questions/what-do-you-mean-by-open-source-software-is-flutter-open-source/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-do-you-mean-by-open-source-software-is-flutter-open-source/en-US.mdx)

<br>
      
### Differentiate between `StatelessWidget` and `StatefulWidget` in Flutter.
      
<!-- Update here: /questions/differentiate-between-statelesswidget-and-statefulwidget-in-flutter/en-US.mdx -->

`StatelessWidget`s are those that do not change, or are immutable. Its appearance and properties remain constant throughout the widget's lifetime. **Icon**, **IconButton**, **Text** are examples of stateless widgets.

`StatefulWidget`s are those that change their properties while running. They are dynamic, which means they can be rebuilt multiple times during their lifetime. It can alter its appearance in response to events caused by the user interactions or when data is received. **Checkbox**, **Radio**, **Slider**, **InkWell**, **Form**, and **TextField** are examples of stateful widgets.

<!-- Update here: /questions/differentiate-between-statelesswidget-and-statefulwidget-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/differentiate-between-statelesswidget-and-statefulwidget-in-flutter/en-US.mdx)

<br>
      
### What is `BuildContext` in Flutter? And why is it needed?
      
<!-- Update here: /questions/what-is-buildcontext-in-flutter-and-why-is-it-needed/en-US.mdx -->

`BuildContext` is a locator that tracks and locates each widget in a widget tree. `BuildContext` objects are passed to **WidgetBuilder** functions, and are available from the `State.context` member. Some static functions (e.g. **showDialog**, **Theme.of**, and so forth) also take build contexts so that they can act on behalf of the calling widget, or obtain data specifically for the given context.

There are many reasons why `BuildContext` is important. From locating widgets in the tree to interacting with **RenderObjects**, the context makes all of these interactions possible. It serves as the **bridge** between the widgets and rendering layer and is especially powerful for combining functionality or using information from one tree in another.

<!-- Update here: /questions/what-is-buildcontext-in-flutter-and-why-is-it-needed/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-buildcontext-in-flutter-and-why-is-it-needed/en-US.mdx)

<br>
      
### What are packages and plugins in Flutter?
      
<!-- Update here: /questions/what-are-packages-and-plugins-in-flutter/en-US.mdx -->

A package only contains Dart code. Some of the packages may use Flutter specific functionality and thus have a dependency on the Flutter framework.

A plugin contains Dart combined with one or more platform-specific native (Java/Swift/JavaScript) code. The API of the plugin is written in Dart and the implementations are written in native languages. Flutter uses platform channels to communicate with native codes.

<!-- Update here: /questions/what-are-packages-and-plugins-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-are-packages-and-plugins-in-flutter/en-US.mdx)

<br>
      
### Name some popular apps made with Flutter.
      
<!-- Update here: /questions/name-some-popular-apps-made-with-flutter/en-US.mdx -->

- BMW
- Google Pay
- Alibaba
- Beika
- Dream11
- eBay
- Nubank
- Reflectly
- Rive
- Toyota
- Tencent
- Hamilton
- iRobot

_Source: [here](https://flutter.dev/showcase)_

<!-- Update here: /questions/name-some-popular-apps-made-with-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/name-some-popular-apps-made-with-flutter/en-US.mdx)

<br>
      
### What are different build modes in Flutter?
      
<!-- Update here: /questions/what-are-different-build-modes-in-flutter/en-US.mdx -->

The Flutter tooling supports three different build modes while compiling the app. We need to choose the build mode depending upon where we are in the development cycle.

- `debug`: For development purpose, the **hot reload** feature is enabled only in the debug mode.
- `profile`: For analyzing the app performance. We use DevTools suite to profile app's performance.
- `release`: For releasing the app when everything is ready.

_To learn more, check [docs](https://docs.flutter.dev/testing/build-modes)._

<!-- Update here: /questions/what-are-different-build-modes-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-are-different-build-modes-in-flutter/en-US.mdx)

<br>
      
### What is the difference between `WidgetsApp` and `MaterialApp` in Flutter?
      
<!-- Update here: /questions/what-is-the-difference-between-widgetsapp-and-materialapp-in-flutter/en-US.mdx -->

`WidgetsApp` is a convenient widget that wraps a number of widgets that are commonly required for an application. It also provides basic navigation.

`MaterialApp` builds an application that uses the mterial design. It is built upon the `WidgetsApp` and contains some material-design specific functionality, such as **AnimatedTheme**. We certainly don't require `MaterialApp` every time when building a Flutter project. `CupertinoApp` gives iOS like look and feel, or we can even define our custom sets of widgets.

<!-- Update here: /questions/what-is-the-difference-between-widgetsapp-and-materialapp-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-the-difference-between-widgetsapp-and-materialapp-in-flutter/en-US.mdx)

<br>
      
### Differentiate between final, const and static keyword.
      
<!-- Update here: /questions/differentiate-between-final-const-and-static-keyword/en-US.mdx -->

The `final` keyword defines a variable that can be initialized once and cannot be changed after being assigned a value for the first time.

The `const` keyword defines a constant variable that should not be changed over time.

Now the only difference between the final and const variable is that **final is a runtime-constant**, which in turn means that its value can be assigned at runtime instead of the compile-time that we had for the const keyword.

The `static` keyword is used for a class-level variable and method that is the same for every instance of a class, this means if a data member is static, it can be accessed without creating an object. The static keyword allows data members to persist Values between different instances of a class.

<!-- Update here: /questions/differentiate-between-final-const-and-static-keyword/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/differentiate-between-final-const-and-static-keyword/en-US.mdx)

<br>
      
### What are `StatefulWidget` Lifecycle methods. Explain briefly.
      
<!-- Update here: /questions/what-are-statefulwidget-lifecycle-methods-explain-briefly/en-US.mdx -->

- **createState() method:** Whenever a StatefulWidget is created, the framework calls this method to create fresh State objects. This method must be overridden.

- **initState() method:** This method is the first method that is called while creating a StatefulWidget class. Here we allocate our resources, which means we can initialize our variable, data, and properties.

- **didChangeDependencies() method:** This method is called just after initState() method when a dependency of this State object changes. For example, if the previous build was referencing an InheritedWidget that changes, this method notifies the object to change. Generally, subclasses don't override didChangeDependencies() method because the framework calls build() methods after dependency change. But to do some expensive work, let's say some network calls, the method is preferred over doing everything on build() method itself.

- **build() method:** Every time the widget is rebuilt, the build() method is used. This can happen after calling initState(), didChangeDependencies(), or didUpdateWidget(), or after changing the state with a call to setState().

- **didUpdateWidget() method:** This method is called whenever the widget configuration changes. This method exists for triggering side-effects when one of the parameters in the StatefulWidget changes. A typical example is implicitly animated widgets.

- **setState() method:** This method notifies the framework that the internal state of this object has changed. The provided callback must be synchronous which might impact the user interface in the subtree. The framework schedules a build() for this current State object.

- **deactivate() method:** The framework calls this method when the State is removed from the tree, temporarily or permanently.

- **dispose() method:** This method is called when the State is removed from the tree, permanently. After the dispose() method is called, the State object is considered unmounted. Subclasses should override this method to release any resources retained by this object.

<!-- Update here: /questions/what-are-statefulwidget-lifecycle-methods-explain-briefly/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-are-statefulwidget-lifecycle-methods-explain-briefly/en-US.mdx)

<br>
      
### What are keys and why do we need them?
      
<!-- Update here: /questions/what-are-keys-and-why-do-we-need-them/en-US.mdx -->

Flutter uses keys to preserve the state and to uniquely identify specific widgets within a widget tree. It is used to preserve the state of the `StatefulWidget`s while they are being replaced with other widgets or just moved in the widget tree.

The most common usage of key is when we are dealing with collections of widgets that have the same type; so, without keys, the element tree would not know which state corresponds to which widget, as they would all have the same type.

For an explanation with an example, check this [stackoverflow answer](https://stackoverflow.com/a/50081052).

<!-- Update here: /questions/what-are-keys-and-why-do-we-need-them/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-are-keys-and-why-do-we-need-them/en-US.mdx)

<br>
      
### What is the difference between `Expanded` and `Flexible` widget?
      
<!-- Update here: /questions/what-is-the-difference-between-expanded-and-flexible-widget/en-US.mdx -->

The only difference between these two widgets is the `Flexible` widget takes only the space needed by the child, whereas the `Expanded` widget enforces its child to take all the available space.

The `Expanded` widget in flutter is shorthand of `Flexible` with the fit set to **FlexFit. tight**.

```dart
Column(children: [
  Row(
    children: [_ExpandedWidget(), _FlexibleWidget()],
  ),
  Row(
    children: [_ExpandedWidget(), _ExpandedWidget()],
  ),
  Row(
    children: [_FlexibleWidget(), _FlexibleWidget()],
  ),
]),
```

<p align="center">
  <img src="assets/expanded_vs_flexible.PNG" alt="Expanded vs Flexible" width="800px" />
</p>

<!-- Update here: /questions/what-is-the-difference-between-expanded-and-flexible-widget/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-the-difference-between-expanded-and-flexible-widget/en-US.mdx)

<br>
      
### What is Fat Arrow Notation in Dart?
      
<!-- Update here: /questions/what-is-fat-arrow-notation-in-dart/en-US.mdx -->

A fat arrow (=>) is used to define a single expression in a function. This is a cleaner way to write functions with a single statement.

Syntax:

```
ReturnType FunctionName(Params) => Expression;
```

Example:

```dart
// Without fat arrow notation
String findSquare(int n) {
  return 'The square of $n is ${n * n}.';
}

// With fat arrow notation
String findSquare(int n) => 'The square of $n is ${n * n}.';
```

<!-- Update here: /questions/what-is-fat-arrow-notation-in-dart/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-fat-arrow-notation-in-dart/en-US.mdx)

<br>
      
### What is the purpose of `SafeArea` widget in Flutter?
      
<!-- Update here: /questions/what-is-the-purpose-of-safearea-widget-in-flutter/en-US.mdx -->

The `SafeArea` widget insets its child by sufficient padding to avoid intrusions by the operating system. For example, this will indent the child by enough to avoid the status bar at the top of the screen. It will also indent the child by the amount necessary to avoid the Notch, or similar creative physical features of the display.

<!-- Update here: /questions/what-is-the-purpose-of-safearea-widget-in-flutter/en-US.mdx -->

<br>

[Back to top ↑](#table-of-contents) &nbsp;&nbsp;/&nbsp;&nbsp; [🖌️ Edit answer](https://github.com/thisissandipp/flutter-interview-questions/edit/main/questions/what-is-the-purpose-of-safearea-widget-in-flutter/en-US.mdx)

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
8. [What do you mean by open-source software? Is Flutter open-source?](#what-do-you-mean-by-open-source-software-is-flutter-open-source)
9. [Differentiate between `StatelessWidget` and `StatefulWidget` in Flutter.](#differentiate-between-statelesswidget-and-statefulwidget-in-flutter)
10. [What are packages and plugins in Flutter?](#what-are-packages-and-plugins-in-flutter)
11. [Name some popular apps made with Flutter.](#name-some-popular-apps-made-with-flutter)
12. [Differentiate between final, const and static keyword.](#differentiate-between-final-const-and-static-keyword)
13. [What is Fat Arrow Notation in Dart?](#what-is-fat-arrow-notation-in-dart)
14. [What is the purpose of `SafeArea` widget in Flutter?](#what-is-the-purpose-of-safearea-widget-in-flutter)

<!-- QUESTIONS:EASY:END -->

### Intermediate-level Flutter Interview Questions

<!-- QUESTIONS:INTERMEDIATE:START -->

1. [What is `BuildContext` in Flutter? And why is it needed?](#what-is-buildcontext-in-flutter-and-why-is-it-needed)
2. [What are different build modes in Flutter?](#what-are-different-build-modes-in-flutter)
3. [What is the difference between `WidgetsApp` and `MaterialApp` in Flutter?](#what-is-the-difference-between-widgetsapp-and-materialapp-in-flutter)
4. [What are `StatefulWidget` Lifecycle methods. Explain briefly.](#what-are-statefulwidget-lifecycle-methods-explain-briefly)
5. [What are keys and why do we need them?](#what-are-keys-and-why-do-we-need-them)
6. [What is the difference between `Expanded` and `Flexible` widget?](#what-is-the-difference-between-expanded-and-flexible-widget)

<!-- QUESTIONS:INTERMEDIATE:END -->

### Advanced-level Flutter Interview Questions

<!-- QUESTIONS:ADVANCED:START -->



<!-- QUESTIONS:ADVANCED:END -->

