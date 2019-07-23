import 'package:flutter/material.dart';

abstract class BaseStatefulPage extends StatefulWidget {
  final String title;

  BaseStatefulPage({this.title});

  @protected
  Widget pageContent(BuildContext context);

  @override
  _BaseStatefulPageState createState() => _BaseStatefulPageState();
}

class _BaseStatefulPageState extends State<BaseStatefulPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${widget.title}'),
        ),
        body: widget.pageContent(context),
      ),
    );
  }
}
//
//class InheritedPageWidget extends InheritedWidget {
//  final Key key;
//  final String title;
//  final Widget child;
//
//  InheritedPageWidget({this.key, this.title, this.child}) : super(key: key, child: child);
//
//  static InheritedPageWidget of(BuildContext context) {
//    return context.inheritFromWidgetOfExactType(InheritedPageWidget);
//  }
//
//  @override
//  bool updateShouldNotify(InheritedPageWidget oldWidget) {
//    // TODO: implement updateShouldNotify
//    return this.title != oldWidget.title;
//  }
//}

abstract class BaseStatelessPage extends StatelessWidget {
  final String title;

  BaseStatelessPage({this.title});

  @protected
  Widget pageContent(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: pageContent(context),
      ),
    );
  }
}
