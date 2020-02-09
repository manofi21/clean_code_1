import 'package:flutter/material.dart';
import 'function.dart';
import 'model.dart';
import 'widgets.dart';

class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

GetASet parts = new GetASet();
Widgets wrap = Widgets(parts);
Valid val = new Valid(parts);
class _HomesState extends State<Homes> {
  
  final globalk = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: wrap.layout(
            globalKey: globalk,
            theWidgets: [
              wrap.field(val.saver),
              wrap.button(globalk)
            ]
          )),
    );
  }
}


