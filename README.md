# Flutter Interview Questions

This repository is about common Flutter interview questions and their answers.

***🚀 If you find this repository useful, kindly give it a star ⭐***

<hr />

| Sl.No|  Questions       |
|------|------------------|
| 01 |[What is Flutter?](#q1-what-is-flutter)|
| 02 |[What is Dart and Why does Flutter use it?](#q2-what-is-dart-and-why-does-flutter-use-it)|
| 03 |[What is `pubspec.yaml` file and what does it do?](#q3-what-is-pubspecyaml-file-and-what-does-it-do)|
| 04 |[What is the difference between `main()` and `runApp()` functions in Flutter?](#q4-what-is-the-difference-between-main-and-runapp-functions-in-flutter)|
| 05 |[Differentiate between named parameters and positional parameters in Flutter.](#q5-differentiate-between-named-parameters-and-positional-parameters-in-flutter)|
| 06 |[What are widgets in Flutter?](#q6-what-are-widgets-in-flutter)|
| 07 |[What is `Hot Reload` and `Hot Restart` in Flutter?](#q7-what-is-hot-reload-and-hot-restart-in-flutter)|
| 08 |[What do you mean by open-source software? Is Flutter open-source?](#q8-what-do-you-mean-by-open-source-software-is-flutter-open-source)|
| 09 |[Differentiate between `StatelessWidget` and `StatefulWidget` in Flutter.](#q9-differentiate-between-statelesswidget-and-statefulwidget-in-flutter)|
| 10 |[What is `BuildContext` in Flutter? And why is it needed?](#q10-what-is-buildcontext-in-flutter-and-why-is-it-needed)|
| 11 |[What are packages and plugins in Flutter?](#q11-what-are-packages-and-plugins-in-flutter)|
| 12 |[Name some popular apps made with Flutter.](#q12-name-some-popular-apps-made-with-flutter)|
| 13 |[What are different build modes in Flutter?](#q13-what-are-different-build-modes-in-flutter)|
| 14 |[What is the difference between `WidgetsApp` and `MaterialApp` in Flutter?](#q14-what-is-the-difference-between-widgetsapp-and-materialapp-in-flutter)|
| 15 |[Differentiate between final, const and static keyword.](#q15-differentiate-between-final-const-and-static-keyword)|
| 16 |[What are `StatefulWidget` Lifecycle methods. Explain briefly.](#q16-what-are-statefulwidget-lifecycle-methods-explain-briefly)|
| 17 |[What are keys and why do we need them?](#q17-what-are-keys-and-why-do-we-need-them)|
| 18 |[What is the difference between `Expanded` and `Flexible` widget?](#q18-what-is-the-difference-between-expanded-and-flexible-widget)|
| 19 |[What is Fat Arrow Notation in Dart?](#q19-what-is-fat-arrow-notation-in-dart)|
| 20 |[What is the purpose of `SafeArea` widget in Flutter?](#q20-what-is-the-purpose-of-safearea-widget-in-flutter)|
| 21 |What are `Slivers`?|
| 22 |What is the extension method in Dart?|
| 23 |Explain the `isMounted` property. How is it important and when to use it?|
| 24 |What is sound null safety?|
| 25 |Differentiate between `mainAxisAlignment` and `crossAxisAlignment`.|
| 26 |What are mixins? How to use them?|
| 27 |What is the difference between `Container` and `SizedBox` widget?|
| 28 |What do you mean by Null-aware operators?|
| 29 |What is `AppLifecycleState`?|
| 30 |Describe some of the major features of Flutter.|

<br />
<hr />

## Q1. What is Flutter?

Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, and the web from a single codebase. Flutter was released in May 2017. Developers consider it as the fastest and most expressive way to create native apps. Flutter will have a significant impact on the development of high-quality, feature-packed mobile applications in the near future due to its simplicity, high performance as a result of its development, and rich user interface.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q2. What is Dart and Why does Flutter use it?

Dart is a programming language designed for client development, such as for the web and mobile apps. It is developed by Google and can also be used to build server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax.

* Dart allows Flutter to avoid the need for a separate declarative layout language like JSX or XML, or separate visual interface builders, because Dart's declarative, programmatic layout is easy to read and visualize.
* Dart uses the Just In Time compilation. This drastically reduces the time of development and responds faster.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q3. What is `pubspec.yaml` file and what does it do?

Every Flutter project includes a `pubspec.yaml` file, which is generated while creating a new Flutter project. It’s located at the top of the project tree and contains metadata about the project that the Dart and Flutter tooling needs to know.

The pubspec file specifies dependencies that the project requires, such as particular packages (and their versions), fonts, or image files. It also specifies other requirements, such as dependencies on developer packages (like testing or mocking packages), or particular constraints on the version of the Flutter SDK.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q4. What is the difference between `main()` and `runApp()` functions in Flutter?

The `main()` function tells Dart where the program starts, and it must be in the file that is considered the "entry point" for the program. By convention, this will be in a file called `main.dart`. This main function can execute any code within it's code block.

The `runApp()` function should return widget that would be attached to the screen as a root of the widget tree that will be rendered.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q5. Differentiate between named parameters and positional parameters in Flutter.

A `Positional Parameter` is linked by its position. Positional parameters must be specified in the order in which they appear. `Named Parameters` are referenced by name, which means that they can be used during the function invocation in an order different from the function declaration.

To declare a positional optional parameter, we use square brackets `[ ]`, whereas to declare a named optional parameters we use curly braces `{ }`.

```dart
doSomething(String name, [String greeting = 'Hello']); // Positional Optional Parameter
doSomething({String? name, String greeting = 'Hello'}); // Named Optional Parameter
```

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q6. What are widgets in Flutter?

Widgets are the central class hierarchy in the Flutter framework, that describes the configuration of an element to manage the underlying render tree. A widget is an immutable description of part of a user interface. Widgets themselves have no mutable state, i.e., all their fields must be final.

In Flutter, everything is a widget.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q7. What is `Hot Reload` and `Hot Restart` in Flutter?

Flutter's `Hot Reload` feature injects the updated source code files into the running **Dart Virtual Machine (VM)**, and rebuilds the widget tree preserving the app state to quickly view the effects of the changes.

Whereas `Hot Restart` loads the updated source code files into the VM and restarts the Flutter app, losing all the previous app states.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q8. What do you mean by open-source software? Is Flutter open-source?

Open-source software is software with with source code that anyone can inspect, modify, and enhance. Open-source software is developed in a decentralized and collaborative way, relying on peer review and community production. Open source software is often cheaper, more flexible, and has more longevity than its proprietary peers because it is developed by communities rather than a single author or company.

Yes, Flutter is an open-source software development kit.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q9. Differentiate between `StatelessWidget` and `StatefulWidget` in Flutter.

`StatelessWidget`s are those that do not change, or are immutable. Its appearance and properties remain constant throughout the widget's lifetime. **Icon**, **IconButton**, **Text** are examples of stateless widgets.

`StatefulWidget`s are those that change their properties while running. They are dynamic, which means they can be rebuilt multiple times during their lifetime. It can alter its appearance in response to events caused by the user interactions or when data is received. **Checkbox**, **Radio**, **Slider**, **InkWell**, **Form**, and **TextField** are examples of stateful widgets.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q10. What is `BuildContext` in Flutter? And why is it needed?

`BuildContext` is a locator that tracks and locates each widget in a widget tree. `BuildContext` objects are passed to **WidgetBuilder** functions, and are available from the `State.context` member. Some static functions (e.g. **showDialog**, **Theme.of**, and so forth) also take build contexts so that they can act on behalf of the calling widget, or obtain data specifically for the given context.

There are many reasons why `BuildContext` is important. From locating widgets in the tree to interacting with **RenderObjects**, the context makes all of these interactions possible. It serves as the **bridge** between the widgets and rendering layer and is especially powerful for combining functionality or using information from one tree in another.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q11. What are packages and plugins in Flutter?

A package only contains Dart code. Some of the packages may use Flutter specific functionality and thus have a dependency on the Flutter framework.

A plugin contains Dart combined with one or more platform-specific native (Java/Swift/JavaScript) code. The API of the plugin is written in Dart and the implementations are written in native languages. Flutter uses platform channels to communicate with native codes.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q12. Name some popular apps made with Flutter.

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

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

# Q13. What are different build modes in Flutter?

The Flutter tooling supports three different build modes while compiling the app. We need to choose the build mode depending upon where we are in the development cycle.

- `debug`: For development purpose, the **hot reload** feature is enabled only in the debug mode.
- `profile`: For analyzing the app performance. We use DevTools suite to profile app's performance.
- `release`: For releasing the app when everything is ready.

_To learn more, check [docs](https://docs.flutter.dev/testing/build-modes)._

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q14. What is the difference between `WidgetsApp` and `MaterialApp` in Flutter?

`WidgetsApp` is a convenient widget that wraps a number of widgets that are commonly required for an application. It also provides basic navigation.

`MaterialApp` builds an application that uses the mterial design. It is built upon the `WidgetsApp` and contains some material-design specific functionality, such as **AnimatedTheme**. We certainly don't require `MaterialApp` every time when building a Flutter project. `CupertinoApp` gives iOS like look and feel, or we can even define our custom sets of widgets. 

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q15. Differentiate between final, const and static keyword.

The `final` keyword defines a variable that can be initialized once and cannot be changed after being assigned a value for the first time.

The `const` keyword defines a constant variable that should not be changed over time.

Now the only difference between the final and const variable is that **final is a runtime-constant**, which in turn means that its value can be assigned at runtime instead of the compile-time that we had for the const keyword.

The `static` keyword is used for a class-level variable and method that is the same for every instance of a class, this means if a data member is static, it can be accessed without creating an object. The static keyword allows data members to persist Values between different instances of a class.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q16. What are `StatefulWidget` Lifecycle methods. Explain briefly.

- **createState() method:** Whenever a StatefulWidget is created, the framework calls this method to create fresh State objects. This method must be overridden.

- **initState() method:** This method is the first method that is called while creating a StatefulWidget class. Here we allocate our resources, which means we can initialize our variable, data, and properties.

- **didChangeDependencies() method:** This method is called just after initState() method when a dependency of this State object changes. For example, if the previous build was referencing an InheritedWidget that changes, this method notifies the object to change.

    Generally, subclasses don't override didChangeDependencies() method because the framework calls build() methods after dependency change. But to do some expensive work, let's say some network calls, the method is preferred over doing everything on build() method itself.

- **build() method:** Every time the widget is rebuilt, the build() method is used. This can happen after calling initState(), didChangeDependencies(), or didUpdateWidget(), or after changing the state with a call to setState().

- **didUpdateWidget() method:** This method is called whenever the widget configuration changes. This method exists for triggering side-effects when one of the parameters in the StatefulWidget changes. A typical example is implicitly animated widgets.

- **setState() method:** This method notifies the framework that the internal state of this object has changed. The provided callback must be synchronous which might impact the user interface in the subtree. The framework schedules a build() for this current State object.

- **deactivate() method:** The framework calls this method when the State is removed from the tree, temporarily or permanently.

- **dispose() method:** This method is called when the State is removed from the tree, permanently. After the dispose() method is called, the State object is considered unmounted. Subclasses should override this method to release any resources retained by this object.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q17. What are keys and why do we need them?

Flutter uses keys to preserve the state and to uniquely identify specific widgets within a widget tree. It is used to preserve the state of the `StatefulWidget`s while they are being replaced with other widgets or just moved in the widget tree.

The most common usage of key is when we are dealing with collections of widgets that have the same type; so, without keys, the element tree would not know which state corresponds to which widget, as they would all have the same type.

For an explanation with an example, check this [stackoverflow answer](https://stackoverflow.com/a/50081052).

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q18. What is the difference between `Expanded` and `Flexible` widget?

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

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q19. What is Fat Arrow Notation in Dart?

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

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>

## Q20. What is the purpose of `SafeArea` widget in Flutter?

The `SafeArea` widget insets its child by sufficient padding to avoid intrusions by the operating system. For example, this will indent the child by enough to avoid the status bar at the top of the screen. It will also indent the child by the amount necessary to avoid the Notch, or similar creative physical features of the display.

<div align="right">
    <b><a href="#flutter-interview-questions">⮬ back to top</a></b>
</div>
