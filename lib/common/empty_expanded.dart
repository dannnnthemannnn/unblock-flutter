import 'package:flutter/widgets.dart';

class EmptyExpanded extends StatelessWidget {

  final int flex;

  EmptyExpanded({this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: flex, child: Container(),);
  }
}