import 'package:flutter/cupertino.dart';

class InheritedDataWidget extends InheritedWidget {
  const InheritedDataWidget(
      {super.key,
      required this.callback,
      required this.isVisible,
      required super.child});

  final bool isVisible;
  final Function callback;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static InheritedDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(
        aspect: InheritedDataWidget);
  }
}

class DataManager extends StatefulWidget {
  const DataManager({required this.child, super.key});

  final Widget child;

  @override
  State<DataManager> createState() => _DataManagerState();
}

class _DataManagerState extends State<DataManager> {
  bool isVisible = true;

  void changeVisibility() => {setState(() => isVisible = !isVisible)};

  @override
  Widget build(BuildContext context) {
    return InheritedDataWidget(
      callback: changeVisibility,
      isVisible: isVisible,
      child: widget.child,
    );
  }
}
